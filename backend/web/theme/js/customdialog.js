yii.confirm = function (message, okCallback, cancelCallback) {
    swal({
        title: "Are you sure you want to delete this record?",
        text: "You will not be able to recover this record ",   
        type: 'warning',
        showCancelButton: true,
        allowOutsideClick: true,
        closeOnConfirm: true,
        confirmButtonColor: "#DD6B55",   
        closeOnCancel: true 
    },  okCallback
    );
};


