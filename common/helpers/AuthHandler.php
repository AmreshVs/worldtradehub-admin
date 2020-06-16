<?php

namespace common\helpers;

use frontend\models\User;
use Yii;
use yii\authclient\ClientInterface;
use yii\helpers\ArrayHelper;
use common\helpers\Com;

/**
 * AuthHandler handles successful authentication via Yii auth component
 */
class AuthHandler
{
    /**
     * @var ClientInterface
     */
    private $client;

    public function __construct(ClientInterface $client)
    {
        $this->client = $client;
    }
    
    /**
     * 
     * @return string
     */
    public function handle()
    {
        $attributes = $this->client->getUserAttributes();        
        $email = ArrayHelper::getValue($attributes, 'email');
        $id = ArrayHelper::getValue($attributes, 'id');
        $nickname = ArrayHelper::getValue($attributes, 'login');
        
        $model = User::find()
            ->where([
                'google_token' => $id,
            ])
            ->one();
                
        if ($model === null) {
            $model = User::find()
                ->where([
                    'email' => $attributes['email'],
                ])
                ->one();
                        
            if ($model === null) {
                    $model = new User();
                    $model->first_name = $attributes['given_name'];
                    $model->last_name = $attributes['family_name'];
                    $model->email = $attributes['email'];
                    $model->username = $attributes['email'];
                    $model->google_token = $id;
                    $model->generateAuthKey();
                    $model->status = User::ACTIVE;
                    $model->save(false);
                goto login;
            }
            
            if ((int)$model->status === User::INACTIVE) {
                Com::failureFlash('The user is inactive');
                return; 
            }
    
            $model->google_token = $id;
            $model->status = User::ACTIVE;
            $model->generateAuthKey();
            $model->save(false);
            goto login;
        } else {
            if ((int)$model->status === User::INACTIVE) {
                Com::failureFlash('The user is inactive');
                return; 
            }
            $model->generateAuthKey();
            $model->status = User::ACTIVE;
            $model->save(false);
            goto login;
        }
        
        login:
        return  Yii::$app->user->login($model);
    }

//    public function handle()
//    {
//        $attributes = $this->client->getUserAttributes();
//        
//        $email = ArrayHelper::getValue($attributes, 'email');
//        $id = ArrayHelper::getValue($attributes, 'id');
//        $nickname = ArrayHelper::getValue($attributes, 'login');
//        
//        /* @var Auth $auth */
//        $auth = Auth::find()->where([
//            'source' => $this->client->getId(),
//            'source_id' => $id,
//        ])->one();
//
//        if (Yii::$app->user->isGuest) {
//            if ($auth) { // login
//                /* @var User $user */
//                $user = $auth->user;
//                $this->updateUserInfo($user);
//                Yii::$app->user->login($user, Yii::$app->params['user.rememberMeDuration']);
//            } else { // signup
//                if ($email !== null && User::find()->where(['email' => $email])->exists()) {
//                    Yii::$app->getSession()->setFlash('error', [
//                        Yii::t('app', "User with the same email as in {client} account already exists but isn't linked to it. Login using email first to link it.", ['client' => $this->client->getTitle()]),
//                    ]);
//                } else {
//                    $password = Yii::$app->security->generateRandomString(6);
//                    $user = new User([
//                        'username' => $nickname,
//                        'github' => $nickname,
//                        'email' => $email,
//                        'password' => $password,
//                    ]);
//                    $user->generateAuthKey();
//                    $user->generatePasswordResetToken();
//
//                    $transaction = User::getDb()->beginTransaction();
//
//                    if ($user->save()) {
//                        $auth = new Auth([
//                            'user_id' => $user->id,
//                            'source' => $this->client->getId(),
//                            'source_id' => (string)$id,
//                        ]);
//                        if ($auth->save()) {
//                            $transaction->commit();
//                            Yii::$app->user->login($user, Yii::$app->params['user.rememberMeDuration']);
//                        } else {
//                            Yii::$app->getSession()->setFlash('error', [
//                                Yii::t('app', 'Unable to save {client} account: {errors}', [
//                                    'client' => $this->client->getTitle(),
//                                    'errors' => json_encode($auth->getErrors()),
//                                ]),
//                            ]);
//                        }
//                    } else {
//                        Yii::$app->getSession()->setFlash('error', [
//                            Yii::t('app', 'Unable to save user: {errors}', [
//                                'client' => $this->client->getTitle(),
//                                'errors' => json_encode($user->getErrors()),
//                            ]),
//                        ]);
//                    }
//                }
//            }
//        } else { // user already logged in
//            if (!$auth) { // add auth provider
//                $auth = new Auth([
//                    'user_id' => Yii::$app->user->id,
//                    'source' => $this->client->getId(),
//                    'source_id' => (string)$attributes['id'],
//                ]);
//                if ($auth->save()) {
//                    /** @var User $user */
//                    $user = $auth->user;
//                    $this->updateUserInfo($user);
//                    Yii::$app->getSession()->setFlash('success', [
//                        Yii::t('app', 'Linked {client} account.', [
//                            'client' => $this->client->getTitle()
//                        ]),
//                    ]);
//                } else {
//                    Yii::$app->getSession()->setFlash('error', [
//                        Yii::t('app', 'Unable to link {client} account: {errors}', [
//                            'client' => $this->client->getTitle(),
//                            'errors' => json_encode($auth->getErrors()),
//                        ]),
//                    ]);
//                }
//            } else { // there's existing auth
//                Yii::$app->getSession()->setFlash('error', [
//                    Yii::t('app',
//                        'Unable to link {client} account. There is another user using it.',
//                        ['client' => $this->client->getTitle()]),
//                ]);
//            }
//        }
//    }
//
//    /**
//     * @param User $user
//     */
//    private function updateUserInfo(User $user)
//    {
//        $attributes = $this->client->getUserAttributes();
//        $github = ArrayHelper::getValue($attributes, 'login');
//        if ($user->github === null && $github) {
//            $user->github = $github;
//            $user->save();
//        }
//    }
}