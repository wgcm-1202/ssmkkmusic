var posterTvGrid = new posterTvGrid('posterTvGrid', {
    className: "posterTvGrid"
}, [{
    "img": "img\/bos_client_1547466371f5a8864429456f49e904ab0430b8dc17.jpg",
    "title": "Lorem ipsum dolor sit amet",
    "url": "http:\/\/www.htmleaf.com\/"
},
    {
        "img": "img\/bos_client_1564977676ca8e283f0cb726ec627b7aa533c9925b.jpg",
        "title": "Lorem ipsum dolor sit amet",
        "url": "http:\/\/www.htmleaf.com\/"
    },
    {
        "img": "img\/bos_client_1565923593ab99dc0f895e6d1d14aae0f230823bd4.jpg",
        "title": "Lorem ipsum dolor sit amet",
        "url": "http:\/\/www.htmleaf.com\/"
    },
    {
        "img": "img\/bos_client_156592357207aacb94cc18159bf30e740ea3b09208.jpg",
        "title": "Lorem ipsum dolor sit amet",
        "url": "http:\/\/www.htmleaf.com\/"
    },
    {
        "img": "img\/bos_client_1565923593ab99dc0f895e6d1d14aae0f230823bd4.jpg",
        "title": "Lorem ipsum dolor sit amet",
        "url": "http:\/\/www.htmleaf.com\/"
    },
    {
        "img": "img\/bos_client_156592357207aacb94cc18159bf30e740ea3b09208.jpg",
        "title": "Lorem ipsum dolor sit amet",
        "url": "http:\/\/www.htmleaf.com\/"
    }
]);
var swiper = new Swiper('.swiper-container', {
    slidesPerView: 1,
    spaceBetween: 30,
    loop: true,
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
    },
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
});
function reset_form(ele) {
    $(ele)[0].reset();
    //清空表单样式
    $(ele).find("*").removeClass("has-error has-success");
    $(ele).find(".help-block").text("");
}

//点击新增按钮弹出模态框。
$("#user_login_modal_btn").click(function() {
    //清除表单数据（表单完整重置（表单的数据，表单的样式））
    reset_form("#userLoginModal form");
    //弹出模态框
    $("#userLoginModal").modal({
        backdrop: "static"
    });
});
//点击登录
$("#user_login_btn").click(function() {
    $.ajax({
        url: "${pageContext.request.contextPath}/login",
        type: "POST",
        data: $("#userLoginModal form").serialize(),
        success: function(result) {
            if (result.code == 100) {
                alert("成功");
                window.location.href = "/ssmkkmusic_war_exploded/";
                $("#userAddModal").modal('hide');
                //2、显示刚才保存的数据
            } else {
                //显示失败信息
                alert("失败");
                console.log(result);
            }
        }
    });
});
$("#user_add_modal_btn").click(function() {
    //清除表单数据（表单完整重置（表单的数据，表单的样式））
    reset_form("#userAddModal form");
    //弹出模态框
    $("#userAddModal").modal({
        backdrop: "static"
    });
});
//点击保存，保存员工。
$("#user_save_btn").click(function() {
    $.ajax({
        url: "${pageContext.request.contextPath}/add",
        type: "POST",
        data: $("#userAddModal form").serialize(),
        success: function(result) {
            //alert(result.msg);
            if (result.code == 100) {
                alert("成功");
                //员工保存成功；
                //1、关闭模态框
                window.location.href="/ssmkkmusic_war_exploded/";
                $("#userAddModal").modal('hide');
                //2、显示刚才保存的数据
            } else {
                //显示失败信息
                alert("失败");
                console.log(result);
            }
        }
    });
});