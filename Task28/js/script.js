function openPage(val){
    $.ajax({
        url:'components/showpage.cfc?method=descripition',
        type:'post',
        data:{
            method:"descripition",
            Email: val,
            dataType:"text"
        },
        success:function(data){
            $("#message").text(data );
        }
    }) 
}