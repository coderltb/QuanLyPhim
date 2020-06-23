$(document).ready(function() {
    $(".back-to-top").hide();
    $(window).scroll(function() {
        if ($(this).scrollTop() > 50)
            $(".back-to-top").fadeIn();
        else
            $(".back-to-top").fadeOut();
    });

    $(".back-to-top").click(function(e) {
        $("body,html").animate({ scrollTop: 0 }, 600);
        return false;
    });

    $('.btnThemXoaSua').click(function(e) {
        e.preventDefault();
        // hiện hộp thoại chỉnh sửa
        $('.edit-dialog').fadeIn(700);

        //thêm lớp mờ đen cho trang web
        $('body').append('<div id="over">');
        $('#over').fadeIn(500);

        //đóng hộp thoại chỉnh sửa
        $(document).on('click', "a.close, #over", function() {
            $('#over, .edit-dialog').fadeOut(300, function() {
                $('#over').remove();
            });
            return false;
        })
    })

    $('.btn-xemphim').click(function(e) {
        e.preventDefault();
        //hiện hộp chứa phim
        $('.video-box').fadeIn(700);

        //thêm lớp mờ
        $('body').append('<div id="over">');
        $('#over').fadeIn(500);

        //đóng hộp phim
        $(document).on('click', "close, #over", function() {
            $('#over, .video-box').fadeOut(300, function() {
                $('#over').remove();
            });
            return false;
        });
    });
});