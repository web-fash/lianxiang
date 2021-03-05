
let num = 0;
function change(){           
    if(num == $(".banner-num>span").length - 1){
        num = 0;
    }else{
        num++;
    }
    $(".banner-list").offset({
        left:-(num *  $(".banner-box").width())
    });
    $(".banner-num>span").removeClass("circle");
    $(".banner-num>span").eq(num).addClass("circle");
    $(".banner-num i").css({
        background:"#fff"
    });
    $(".banner-num i").eq(num).css({
        background:"rgba(0,0,0,0)"
    });
}
$(".banner-num>span").mouseover(function(){
    num = $(this).index()
    $(".banner-list").offset({
        left:-(num *  $(".banner-box").width())
    });
    $(".banner-num>span").removeClass("circle");
    $(this).addClass("circle");
    $(".banner-num i").css({
        background:"#fff"
    });
    $(this).find("i").css({
        background:"rgba(0,0,0,0)"
    })
});
timer = setInterval(change,3000);

$(".banner-left").click(function(){
    if(num !== 0){
        num--;
    }else{
        num = $(".banner-num>span").length-1;
    }
    $(".banner-num>span").removeClass("circle");
    $(".banner-num>span").eq(num).addClass("circle");
    $(".banner-num i").css({
        background:"#fff"
    });
    $(".banner-num i").eq(num).css({
        background:"rgba(0,0,0,0)"
    });
    $(".banner-list").offset({
        left:-(num *  $(".banner-box").width())
    });
})
$("#banner").on("mouseover",function(){
    clearInterval(timer);
    $(".banner-dir").css({
        display:"block"
    });
}).on("mouseout",function(){
timer = setInterval(change,3000);
$(".banner-dir").css({
        display:"none"
    });
});
$(".banner-right").click(function(){
    if(num < $(".banner-num>span").length - 1){
        num++
        $(".banner-num>span").removeClass("circle");
        $(".banner-num>span").eq(num).addClass("circle");
        $(".banner-list").offset({
            left:-(num  *  $(".banner-box").width())
        });
        $(".banner-num i").css({
            background:"#fff"
        });
        $(".banner-num i").eq(num).css({
            background:"rgba(0,0,0,0)"
        });
    }else{
        num = 0;
        $(".banner-num>span").removeClass("circle");
        $(".banner-num>span").eq(num).addClass("circle");
        $(".banner-list").offset({
            left:  0
        });
        $(".banner-num i").css({
            background:"#fff"
        });
        $(".banner-num i").eq(num).css({
            background:"rgba(0,0,0,0)"
        });
    }
})
 $(".header-title").mouseover(function(){
    $(".header-title em").css({
        color:"#121212"
    })
    $(this).find("em").css({
        color:"#395782"
    })
    $(".header-nav").removeClass("active")
    $(this).find(".header-nav").addClass("active")
    $(this).find(".header-nav").children().children().first().children().last().children().width($(".header-nav").width() / ($(this).find(".header-nav").children().children().first().children().last().children().length + 1));
}).mouseout(function () {
    $(".header-nav").removeClass("active");
    $(".header-title em").css({
        color:"#121212"
    })
}) 





$(".login").on("click",function(){
    $("#login-clo").css({
        display:"block"
    });
    $("#login").css({
        display:"block"
    })
});


$(".login-user").click(function(){
    $(".login-fast-box").hide();
    $(this).hide();
    $(".login-normal-box").show();
    $(".login-p").show();
});
$(".telephonea").focus(function(){
    $(this).css({
        border:"1px solid #424242"
    });
}).blur(function(){
    $(this).css({
        border:"1px solid #d6d6d6"
    });
});

$(".notea").focus(function(){
    $(this).css({
        border:"1px solid #424242"
    });
    
}).blur(function(){
    $(this).css({
        border:"1px solid #d6d6d6"
    });
});
$(".notea").bind("input",function(){
    $(".error-msg").html("");
    $(".error-box").hide();
})
function isTure(str){
    var reg = /^1[123456789]\d{9}$/;
    if(!reg.test(str)){
    return false;
    }
    return true
};
$(".hd-login-show").mouseover(function(){
    $(".top-phone").slideDown(function(){
        $(".top-phone").css({
            display:"block",
            height:60
        })
    })
}).mouseout(function(){
    $(".top-phone").slideUp(function(){
        $(".top-phone").css({
            display:"none",
            height:0
        })
    })
})
$(".logout").click(function(){
    removeCookie( $(".hd-login-show").html())
    $(".hd-login").css({
        display:"block"
    });
    $(".hd-login-show").html("").css({
        display:"none"                    
    });
    
})
$(".regist-btn-plat").click(function(){
    location.href = "register.html"
})
$(".content-chren-img").click(function(){
    let index = $(this).index()
    location.href = `detailPage.html?id=${index}`
})
$(".shop").click(function(){
    location.href = "shopping.html"
})
$(".submit").click(function(){
    let http = new XMLHttpRequest()
			http.open("get",`http://10.35.161.137:8080/login?username=${$(".telephone").val()}&password=${$(".note").val()}`)
			http.send()
			http.onreadystatechange = function(){
				if(http.readyState === 4){
					if(http.responseText === "error"){
						alert("用户名或密码错误")
					}
					else{
						sessionStorage.setItem("isLogin","1")
						alert("登录成功")
						location.href = "http://10.35.161.137/项目/src/index.html"
					}
                }
                

			}

       /*  $.ajax({
            url:"login.php",
            type:"get",
            data:{
                username:$Name,
                password:$Pwd
            },
            success:function(resText){
                if(resText == "0"){
                    $(".error-msg").html("账号或密码错误");
                }
                if(resText == "1"){
                   alert("登陆成功")
                }
            }           
        }) */
})