<script type="text/javascript">
    runOnLoad(function() {
        $('.razorpay-payment-button').click();
        window.top.postMessage(
              JSON.stringify({
                message: "Payment Success",
                id: '<?= $id ?>',
                amount: '<?= $amount ?>',
                event_key: '<?= $event_key?>',
                event_name: '<?= $event_name ?>',
                ticket_key: '<?= $ticket_key ?>'
              }),
              '*'
            );
    });
</script>