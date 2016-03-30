<%--
  Created by IntelliJ IDEA.
  User: wangbin
  Date: 2015/8/17
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../inc/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../inc/meta.jsp" %>
    <meta name="description" content="">
    <meta name="author" content="">
    <title>设置编辑</title>
    <%@ include file="../inc/css.jsp" %>
</head>

<body>
<div id="posts" class="wrapper">

    <%@ include file="../inc/nav.jsp" %>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">设置编辑</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables">
                                <colgroup>
                                    <col class="gradeA even"/>
                                    <col class="gradeA odd"/>
                                    <col class="gradeA even"/>
                                    <col class="gradeA odd"/>
                                </colgroup>
                                <thead>
                                <tr>
                                    <th><input type="checkbox" onclick="$bluemobi.checkAll(this)" class="checkall"/></th>
                                    <th>
                                        <c:if test="${measureConfig.part eq 0 }">颈部</c:if>
                                        <c:if test="${measureConfig.part eq 1 }">手部</c:if>
                                        <c:if test="${measureConfig.part eq 2 }">脸部</c:if>
                                    </th>
                                    <th>x < 正常值</th>
                                    <th>含水量测试结果：干燥</th>
                                </tr>
                                <c:forEach items="" var="measureConfig">
                                    <tr>
                                        <th><input type="checkbox" onclick="$bluemobi.checkAll(this)" class="checkall"/></th>
                                        <th>
                                            <c:if test="${measureConfig.part eq 0 }">颈部</c:if>
                                            <c:if test="${measureConfig.part eq 1 }">手部</c:if>
                                            <c:if test="${measureConfig.part eq 2 }">脸部</c:if>
                                        </th>
                                        <th>x < 正常值</th>
                                        <th>含水量测试结果：干燥</th>
                                    </tr>
                                </c:forEach>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
        </div>
    </div>
    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->

<%@ include file="../inc/footer.jsp" %>
</body>
<script type="text/javascript">
    Date.prototype.format = function(format){
        var o = {
            "M+" :this.getMonth() + 1, // month
            "d+" :this.getDate(), // day
            "h+" :this.getHours(), // hour
            "m+" :this.getMinutes(), // minute
            "s+" :this.getSeconds(), // second
            "q+" :Math.floor((this.getMonth() + 3) / 3), // quarter
            "S" :this.getMilliseconds()
        };
        if (/(y+)/.test(format)) {
            format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        };
        for ( var k in o) {
            if (new RegExp("(" + k + ")").test(format)) {
                format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
            }
        };
        return format;
    };
</script>
<script type="text/javascript">

    var kuserList = {
        v: {
            id: "kuserList",
            list: [],
            dTable: null,
        },
        fn: {
            init: function () {
                kuserList.fn.dataTableInit();

                $('#dataTables_length').remove();
                $('#dataTables_info').remove();
                $('#dataTables_paginate').remove();
                // 查询
                $("#c_search").click(function () {
                    kuserList.v.dTable.ajax.reload();
                })

                $("#delete").click(function () {
                    var checkBox = $("#dataTables tbody tr").find('input[type=checkbox]:checked');
                    var ids = checkBox.getInputId();
                    kuserList.fn.deleteRow(checkBox, ids)
                })
            },
            dataTableInit: function () {
                kuserList.v.dTable = $bluemobi.dataTable($('#dataTables'), {
                    "processing": true,
                    "serverSide": true,
                    "searching":false,
                    "ordering": false,
                    "ajax": {
                        "url": "admin/measureConfig/list",
                        "type": "POST"
                    },
                    "columns": [
                        {"data": "id"},
                        {
                            "data": "skinType",
                            render : function(data ) {
                                if(data == 0){
                                    return "敏感性肌肤肤质状况描述";
                                }
                                if(data == 1){
                                    return "中性肌肤肤质状况描述";
                                }
                                if(data == 2){
                                    return "油性肌肤肤质状况描述";
                                }
                                if(data == 3){
                                    return "干性肌肤肤质状况描述";
                                }else{
                                    return "混合性肌肤肤质状况描述";
                                }
                            }
                        },
                        {
                            "data": "typeY",
                            render:function(data){
                                if(data == 0){
                                    return "y < 正常值（缺油）";
                                }
                                if(data == 1){
                                    return "y = 正常值（正常）";
                                }else{
                                    return "y > 正常值（湿润）";
                                }
                            }
                        },
                        {"data": "result"}
                    ],
//                    "columnDefs": [
//                        {
//                            "data": null,
//                            "defaultContent":
//                            "<a  title='查看'  class='btn btn-primary btn-circle edit'>" +
//                            "<i class='fa fa-eye'></i>" +
//                            "</a>",
////                            +
////                            "&nbsp;&nbsp;"
////                            +
////                            "<button type='button'  title='禁用' class='btn btn-circle settingAdded'>" +
////                            "<i class='fa fa-recycle'></i>" +
////                            "</button>",
//                            "targets": -1
//                        }
//                    ],
                    "createdRow": function (row, data, index) {
//                        kuserList.v.list.push(data);
                        $('td', row).eq(0).html("<input type='checkbox' value=" + data.id + ">");
//                        if(data.status == 0){
//                            $(row).addClass("success")
//
//                            $('td', row).last().find(".settingAdded").addClass("btn-default");
//                            $('td', row).last().find(".settingAdded").attr("title", "禁用")
//                        }else{
//                            $('td', row).last().find(".settingAdded").addClass("btn-info");
//                            $('td', row).last().find(".settingAdded").attr("title", "启用");
//                        }
                    },
                    rowCallback: function (row, data) {
                        var items = kuserList.v.list;
                        $('td', row).last().find(".settingAdded").click(function(){
                            kuserList.fn.settingAdded(data);
                        })
                        $('td', row).last().find(".edit").attr("href",'admin/measureConfig/add?id='+data.id);
                    },
                    "fnServerParams": function (aoData) {
                        aoData.mobile = $("#mobile").val();
                        aoData.nickname = $("#nickname").val();
                        aoData.part = $("#part").val();
                    },
                    "fnDrawCallback": function (row) {
                        $bluemobi.uiform();
                    }
                });
            },
//            settingAdded:function(data){
//                $bluemobi.optNotify(function () {
//                    $bluemobi.ajax("admin/kuser/modifyStatus", {id:JSON.stringify(data.id),status:JSON.stringify(data.status)}, function (result) {
//                        kuserList.fn.responseComplete(result);
//                    })
//                },"你确定要禁用/启用吗？","确定");
//            },
            responseComplete: function (result,action) {
                if (result.status == "0") {
                    if(action){
                        kuserList.v.dTable.ajax.reload(null, false);
                    }else{
                        kuserList.v.dTable.ajax.reload();
                    }
                    $bluemobi.notify(result.msg, "success");
                } else {
                    $bluemobi.notify(result.msg, "error");
                }
            }
        }
    }
    $(document).ready(function () {
        kuserList.fn.init();
    });
</script>
</html>