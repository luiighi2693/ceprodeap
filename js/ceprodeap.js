$(document).ready(function() {
    function e() {
        $("#main-menu").addClass("navbar-itmc-big"), $("#phone-detailed").show(), $(".menu-phone-number").attr("style", "padding-top: 0px !important"), $("#logo").attr("style", "width: 180px !important;")
    }

    function n() {
        $("#main-menu").removeClass("navbar-itmc-big"), $("#phone-detailed").hide(), $(".menu-phone-number").attr("style", "padding-top: 15px !important"), $("#logo").attr("style", "width: 90px !important;")
    }
    $("#rely_on_people .info").viewportChecker({
        classToAdd: "animated bounceInRight"
    }), $("#build_your_carrier .info").viewportChecker({
        classToAdd: "animated bounceInLeft"
    }), $("#build_your_carrier .background #gears").viewportChecker({
        classToAdd: "animated bounceIn"
    }), $("#where_we_are .container").viewportChecker({
        classToAdd: "animated flipInX"
    }), $("#carousel-homepage").bind("slide.bs.carousel", function() {
        $("#carousel-homepage .container").addClass("animated bounceInDown")
    }), $(window).width() <= 768 && (n(), $("body").attr("style", "padding-top: 50px !important;")), $(window).resize(function() {
        $(window).width() > 768 ? (e(), $("body").attr("style", "padding-top: 70px !important;")) : (n(), $("body").attr("style", "padding-top: 50px !important;"))
    }), $(window).bind("scroll", function() {
        $(window).width() > 768 && ($(window).scrollTop() > 80 ? n() : e())
    })
});