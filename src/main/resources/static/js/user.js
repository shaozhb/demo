function deleteUser(){
    var rows = $("#dataGrid").bootstrapTable("getSelections");
    var ids = [];
    var len = rows.length;

    for(var i=0;i<len;i++){
        ids.push(rows[i].id);
    }

    $.ajax({
        url:"/user/deleteUser",
        dataType:"json",
        traditional: true,//属性在这里设置
        method:"post",
        data:{
            "ids":ids
        },
        success:function(data){
            document.getElementById("tipContent").innerText="删除成功";
            $("#Tip").modal('show');
            $("#dataGrid").bootstrapTable("refresh");
        },
        error:function(){
            document.getElementById("tipContent").innerText="删除失败";
            $("#Tip").modal('show');
        }
    });
}