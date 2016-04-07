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
    <title>会员列表</title>
    <%@ include file="../inc/css.jsp" %>
</head>

<body>
<div id="posts" class="wrapper">

    <%@ include file="../inc/nav.jsp" %>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">会员列表</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="panel-heading">
                            <div class="btn-group pull-left">
                                <input type="hidden" id="schoolId" value="${schoolId}"/>
                                <a href="javascript:void(0)" onclick="kuserList.fn.goExcel()"
                                   class="btn btn-outline btn-info btn-lg" role="button">导出Excel表格</a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <label>手机号：</label>
                            <input type="text" class="form-control" value="" id="mobile" name="mobile" maxlength="20"
                                   placeholder="请输入手机号">
                        </div>
                        <div class="form-group">
                            <label>用户昵称：</label>
                            <input type="text" class="form-control" value="" id="nickname" name="nickname"
                                   maxlength="20"
                                   placeholder="请输入用户昵称">
                        </div>
                        <div class="form-group">
                            <label>微博账号：</label>
                            <input type="text" class="form-control" value="" id="weibo" name="weibo" maxlength="20"
                                   placeholder="请输入微博账号">
                        </div>
                        <div class="form-group">
                            <label>微信账号：</label>
                            <input type="text" class="form-control" value="" id="weixin" name="weixin" maxlength="20"
                                   placeholder="请输入微信账号">
                        </div>
                        <div class="form-group">
                            <label>性别：</label>
                            <select class="form-control input-sm" id="gender">
                                <option value="" selected="selected">全部</option>
                                <option value="1">男</option>
                                <option value="2">女</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>排序：</label>
                            <select class="form-control input-sm" id="sortId">
                                <option value="" selected="selected">全部</option>
                                <option value="1">最早注册</option>
                                <option value="2">年龄最大</option>
                                <option value="3">身高最高</option>
                            </select>
                        </div>
                        <button type="button" id="c_search" class="btn btn-info btn-sm">查询</button>
                    </form>


                    <!-- /.panel-heading -->
                    <div class="panel-body">

                        <div class="table-responsive">

                            <table class="table table-striped table-bordered table-hover" id="dataTables">
                                <colgroup>
                                    <col class="gradeA even"/>
                                    <col class="gradeA odd"/>
                                    <col class="gradeA even"/>
                                    <col class="gradeA odd"/>
                                    <col class="gradeA even"/>
                                    <col class="gradeA odd"/>
                                    <col class="gradeA even"/>
                                    <col class="gradeA odd"/>
                                    <col class="gradeA even"/>
                                    <col class="gradeA odd"/>
                                </colgroup>
                                <thead>
                                <tr>
                                    <th><input type="checkbox" onclick="$bluemobi.checkAll(this)" class="checkall"/>
                                    </th>
                                    <th>手机号</th>
                                    <th>用户昵称</th>
                                    <th>微博账号</th>
                                    <th>微信账号</th>
                                    <th>注册时间</th>
                                    <th>性别</th>
                                    <th>身高(cm)</th>
                                    <th>体重(kg)</th>
                                    <th>出生年</th>
                                    <th>肤质</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
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
    Date.prototype.format = function (format) {
        var o = {
            "M+": this.getMonth() + 1, // month
            "d+": this.getDate(), // day
            "h+": this.getHours(), // hour
            "m+": this.getMinutes(), // minute
            "s+": this.getSeconds(), // second
            "q+": Math.floor((this.getMonth() + 3) / 3), // quarter
            "S": this.getMilliseconds()
        };
        if (/(y+)/.test(format)) {
            format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        }
        ;
        for (var k in o) {
            if (new RegExp("(" + k + ")").test(format)) {
                format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
            }
        }
        ;
        return format;
    };
</script>
<script type="text/javascript">

    var kuserList = {
        v: {
            id: "kuserList",
            list: [],
            dTable: null
        },
        fn: {
            init: function () {
                kuserList.fn.dataTableInit();
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
                    "searching": false,
                    "ordering": false,
                    "ajax": {
                        "url": "admin/user/list",
                        "type": "POST"
                    },
                    "columns": [
                        {"data": "id"},
                        {"data": "mobile"},
                        {"data": "nickname"},
                        {"data": "weibo"},
                        {"data": "weixin"},
                        {
                            "data": "createDate", render: function (data) {
                            return new Date(data).format("yyyy-MM-dd")
                        }
                        },
                        {
                            "data": "gender",
                            render: function (data) {
                                if (data == 1) {
                                    return "男";
                                }
                                else {
                                    return "女";
                                }
                            }
                        },
                        {"data": "height"},
                        {"data": "weight"},
                        {"data": "year"},
                        {"data": "skin"},
                    ],
//                    "columnDefs": [
//                        {
//
//                            "data": null,
//                            "defaultContent":
//                            "<a  title='查看'  class='btn btn-primary btn-circle edit'>" +
//                            "<i class='fa fa-edit'></i>" +
//                            "</a>"
//                            +
//                            "&nbsp;&nbsp;"
//                            +
//                            "<button type='button'  title='禁用' class='btn btn-circle settingAdded'>" +
//                            "<i class='fa fa-recycle'></i>" +
//                            "</button>",
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
                        $('td', row).last().find(".settingAdded").click(function () {
                            kuserList.fn.settingAdded(data);
                        })
                        $('td', row).last().find(".edit").attr("href", 'admin/user/add?id=' + data.id);
                    },
                    "fnServerParams": function (aoData) {
                        aoData.mobile = $("#mobile").val();
                        aoData.nickname = $("#nickname").val();
                        aoData.weibo = $("#weibo").val();
                        aoData.weixin = $("#weixin").val();
                        aoData.gender = $("#gender").val();
                        aoData.sortId = $('#sortId option:selected').val()
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
            responseComplete: function (result, action) {
                if (result.status == "0") {
                    if (action) {
                        kuserList.v.dTable.ajax.reload(null, false);
                    } else {
                        kuserList.v.dTable.ajax.reload();
                    }
                    $bluemobi.notify(result.msg, "success");
                } else {
                    $bluemobi.notify(result.msg, "error");
                }
            },
            goExcel: function () {
                window.location.href = 'user/export/exportStatistics?schoolId=' + $('#schoolId').val();
            }
        }
    }
    $(document).ready(function () {
        kuserList.fn.init();
    });
</script>
</html>