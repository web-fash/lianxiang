$(".less").click(function(){
    let num = $(this).next().val();
    if(num > 1){
        num--;
        $(this).next().val(num);
    }
    computedTotal(); 
})
$(".add").click(function(){
    let num = $(this).prev().val()
    num++;
    $(this).prev().val(num)
    computedTotal();
})

$("#submit").click(function(){
    let number=parseInt( $(".bc_red").val())
    $(".counts").val()=$(".pro_num J_input").val()*number;
})
