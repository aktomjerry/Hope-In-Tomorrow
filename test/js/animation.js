$(function () {
    $("#cal").click(function () {
        $("#abc").slideToggle(2000);
    });
});
$(function () {
    $('#animate').click(function () {
        var $box = $('#revealUp');
        if ($box.height() > 0) {
            $box.animate({ height: '0' });
        } else {
            $box.animate({ height: '100%' });
        }
    });
});