<script type="text/javascript">
    runOnLoad(function() {
        $('.razorpay-payment-button').click();
        window.top.postMessage(
              JSON.stringify({
                error: false,
                message: "Hello World"
              }),
              '*'
            );
    });
</script>