<?php

namespace backend\controllers;

use backend\models\TicketSearch;
use backend\models\EventsUploadForm;
use common\components\CController;
use common\helpers\Com;
use common\helpers\MailerQueueHelper;
use Yii;
use yii\web\Application;
use yii\web\NotFoundHttpException;
use yii\web\UploadedFile;
use common\helpers\UploadHelper;
use common\helpers\FileUploadHelper;

/**
 * class TicketController
 * @package backend\controllers
 * 
 * Title("Ticket Management")
 */
class TicketController extends CController
{
    /**
     * 
     * @return string
     * 
     * @Title("List")
     */
    public function actionIndex()
    {
        $searchModel = new TicketSearch();

        return $this->render('index',
            [
                'searchModel' => $searchModel,
                'dataProvider' => $searchModel->search(Yii::$app->request->queryParams)
            ]
        );
    }  
             
    /**
     * @return string
     * @throws \yii\base\InvalidParamException
     * 
     * @Title("Quick View")
     */
    public function actionQuickView()
    {
        $params = ['id'];
        $post   = Yii::$app->getRequest()->post();
        $result = ['status' => STATUS_FAIL, 'msg' => ''];
        foreach ($params as $param) {
            if ( !array_key_exists($param, $post) ) {
                $result['msg']  = Yii::t('backend', 'Required param missing');
                goto skip;
            }
        }
        
        $resposeArray   = \backend\models\Ticket::find()->where(['ticket_key' => $post['id']])->one();

        $result['status'] = STATUS_SUCCESS;
        $result['response'] = json_encode($resposeArray->toArray());
       
        $result['data']  = $this->renderPartial('qick_view', ['resposeArray' => $resposeArray->toArray()]);
        
        skip:
            
        return $this->asJson($result);
    } 

    
}

  // const RenderSecondRow = () => {

  //   let ids = [28, '', '', '', 87, '', '', '', 121];
  //   let tds = [];

  //   for(let id of ids){
  //     if(id !== ''){
  //       tds.push(
  //         test {id}
  //       )
  //     }
  //   }

  //   return(
  //     {tds}
  //   )
  // }

  // const RenderNormalRow = () => {
  //   let rows = [];
  //   let r1 = 27;
  //   let r3 = 31;
  //   let r5 = 86;
  //   let r7 = 118;
  //   let r9 = 122;

  //   let r1Arr = [];
  //   let r3Arr = [];
  //   let r5Arr = [];
  //   let r7Arr = [];
  //   let r9Arr = [];

  //   for(let i = 0; i < 26; i++){
  //     r1Arr.push(r1);
  //     r3Arr.push(r3);
  //     r5Arr.push(r5);
  //     r7Arr.push(r7);
  //     r9Arr.push(r9);
  //     r1--; r3++; r5--; r7--; r9++;
  //   }

  //   for(let i = 0; i < 26; i++){
  //     rows.push(
  //       <tr colSpan="9" key={i}>
  //         <td className={selected === r1Arr[i] ? "table-success" : ''} onClick={() => handleClick(r1Arr[i])} data-tip={`Stall <b>${r1Arr[i]}</b> <br> <b>Company Name</b> <br> <span>Description</span><br><span class="badge badge-primary">Diamond</span>`}>test {r1Arr[i]}</td>
  //         <td className={selected === r3Arr[i] ? "table-success" : ''} onClick={() => handleClick(r3Arr[i])} data-tip={`Stall <b>${r3Arr[i]}</b> <br> <b>Company Name</b> <br> <span>Description</span><br><span class="badge badge-primary">Diamond</span>`}>test {r3Arr[i]}</td>
  //         <td className={selected === r5Arr[i] ? "table-success" : ''} onClick={() => handleClick(r5Arr[i])} data-tip={`Stall <b>${r5Arr[i]}</b> <br> <b>Company Name</b> <br> <span>Description</span><br><span class="badge badge-primary">Diamond</span>`}>test {r5Arr[i]}</td>
  //         <td className={selected === r7Arr[i] ? "table-success" : ''} onClick={() => handleClick(r7Arr[i])} data-tip={`Stall <b>${r7Arr[i]}</b> <br> <b>Company Name</b> <br> <span>Description</span><br><span class="badge badge-primary">Diamond</span>`}>test {r7Arr[i]}</td>
  //         <td className={selected === r9Arr[i] ? "table-success" : ''} onClick={() => handleClick(r9Arr[i])} data-tip={`Stall <b>${r9Arr[i]}</b> <br> <b>Company Name</b> <br> <span>Description</span><br><span class="badge badge-primary">Diamond</span>`}>test {r9Arr[i]}</td>
  //       </tr>
  //     );
  //     r1--; r3++; r5--; r7--; r9++;
  //   }
  //   return rows;
  // }

  // const RenderSecondLastRow = () => {

  //   let ids = [1, '', 57, '', '', '', 92, '', 148];
  //   let tds = [];

  //   for(let id of ids){
  //     if(id !== ''){
  //       tds.push(
  //         <td className={selected === id ? "table-success" : ''} onClick={() => handleClick(id)} key={id} data-tip={`Stall <b>${id}</b> <br> <b>Company Name</b> <br> <span>Description</span><br><span class="badge badge-primary">Diamond</span>`}>test {id}</td>
  //       )
  //     }
  //     else{
  //       tds.push(
  //         <td className="table-light" key={'empty' + Math.random() * (1 - 20) + 1}></td>
  //       )
  //     }
  //   }

  //   return(
  //     <tr colSpan="9">
  //       {tds}
  //     </tr>
  //   )
  // }

  // const RenderLastRow = () => {

  //   let ids = [0, '', 58, 59, 60, 90, 91, '', 149];
  //   let tds = [];

  //   for(let id of ids){
  //     if(id !== ''){
  //       tds.push(
  //         <td className={selected === id ? "table-success" : ''} onClick={() => handleClick(id)} key={id} data-tip={`Stall <b>${id}</b> <br> <b>Company Name</b> <br> <span>Description</span><br><span class="badge badge-primary">Diamond</span>`}>test {id}</td>
  //       )
  //     }
  //     else{
  //       tds.push(
  //         <td className="table-light" key={'empty' + Math.random() * (1 - 20) + 1}></td>
  //       )
  //     }
  //   }

  //   return(
  //     <tr colSpan="9">
  //       {tds}
  //     </tr>
  //   )
  // }
  //   }
    

//}

