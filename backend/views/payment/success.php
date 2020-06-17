<script type="text/javascript">
    runOnLoad(function() {
        $('.razorpay-payment-button').click();
        window.top.postMessage(
              JSON.stringify({
                error: false,
                message: "Payment Success",
                id: '<?= $id ?>',
                amount: '<?= $amount ?>',
                event_key: '<?= $event_key?>',
                event_name: '<?= $event_name ?>'
              }),
              '*'
            );
    });
</script>