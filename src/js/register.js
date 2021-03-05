$(".input").focus(function(){
    $(".input").css({
        border: "1px solid #d6d6d6"
    })
    $(this).css({
        border: "1px solid #424242"
    });
}).blur(function(){
    $(".input").css({
        border: "1px solid #d6d6d6"
    })
});
$(".header-phone").mouseover(function(){
    $(".phone-hov").show();
}).mouseout(function(){
    $(".phone-hov").hide();
})

$(".repwd").bind("input",function(){
    $(".regist-msg").html("");
    $(".regist-error").hide();
    if($(this).val() !== ""){
        $(".icon-clear").eq(2).css({
            display:"block"
        }); 
    }else{
        $(".icon-clear").eq(2).css({
            display:"none"
        });   
    }
})
$(".icon-clear").click(function(){
    $(this).prev().val("")
})
$(".regist-button").click(function(){
    let http = new XMLHttpRequest()
			http.open("get",`http://10.35.161.137:8080/addUser?username=${$(".phone-person").val()}&password=${$(".pwd").val()}`)
			http.send()
			http.onreadystatechange = function(){
				if(http.readyState === 4){
					if(http.responseText === "success"){
						alert("注册新用户成功，点击去登录");
                        location.href = "http://10.35.161.137/项目/src/index.html";
					}
					else{
						alert("注册失败")
					}
				}
			}

})