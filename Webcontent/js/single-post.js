$(document).ready(function(){
    if($('html, body').scrollTop() < 10) {
        $('html, body').delay(1000).animate({ scrollTop : 540}, 1000);
    }
});

