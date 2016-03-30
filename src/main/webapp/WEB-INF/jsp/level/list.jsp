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
    <title>达人级别勋章</title>
    <%@ include file="../inc/css.jsp" %>
</head>

<body>
<div id="posts" class="wrapper">

    <%@ include file="../inc/nav.jsp" %>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">达人级别勋章</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <%--<div class="panel-heading">--%>
                    <%--<a href="admin/hadmin/add" target="_blank" class="btn btn-outline btn-primary btn-lg" role="button">新增管理员</a>--%>
                    <%--</div>--%>
                    <%--<form class="navbar-form navbar-right" role="search">--%>
                    <%--<div class="form-group">--%>
                    <%--<label>姓名</label>--%>
                    <%--<input type="text" class="form-control" value="" id="name"  name="name" maxlength="20"--%>
                    <%--placeholder="请输入姓名">--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                    <%--<label>账号：</label>--%>
                    <%--<input type="text" class="form-control" value="" id="username"  name="username" maxlength="20"--%>
                    <%--placeholder="请输入账号">--%>
                    <%--</div>--%>
                    <%--<button type="button" id="c_search" class="btn btn-info btn-sm">查询</button>--%>
                    <%--</form>--%>


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
                                </colgroup>
                                <thead>
                                <tr>
                                    <th><input type="checkbox" onclick="$bluemobi.checkAll(this)" class="checkall"/>
                                    </th>
                                    <th>编号</th>
                                    <th>会员等级</th>
                                    <th>勋章图标</th>
                                    <th>操作</th>
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

    <!-- Modal -->
    <div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="pwdModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">提示</h4>
                </div>
                <div class="modal-body">
                    <form id="infoForm" method="post" enctype="multipart/form-data">
                        <input type="hidden" id="hiddenId" name="level"/>
                        <input type="file" name="mainImage" id="mainImage" style="display:none;"
                               onchange="kuserList.fn.changeStatus()"/>
                        <a href="javascript:void(0);" onclick="kuserList.fn.AddImg()">
                            <img id="mainPicture" src="static/images/background.jpg"
                                 style="height: 320px; width: 320px; display: inline; margin-bottom: 5px;" border="1"/>
                        </a>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" onclick="kuserList.fn.subInfo()" class="btn btn-primary">确定</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- Modal end -->


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
            dTable: null,
            mainImageStatus: 0
        },
        fn: {
            init: function () {
                kuserList.fn.dataTableInit();

                //套图主图预览
                $("#mainImage").uploadPreview({
                    Img: "mainPicture",
                    Width: 200,
                    Height: 170
                });

                // 查询
                $("#c_search").click(function () {
                    kuserList.v.dTable.ajax.reload();
                })
                //删除
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
                        "url": "admin/level/list",
                        "type": "POST"
                    },
                    "columns": [
                        {"data": "id"},
                        {"data": "number"},
                        {
                            "data": "level",
                            render: function (data) {
                                if (data == 1) {
                                    return "等级一";
                                }
                                if (data == 2) {
                                    return "等级二";
                                } else if (data == 3) {
                                    return "等级三";
                                }
                            }
                        },
                        {"data": null},
                        {"data": ""}
                    ],
                    "columnDefs": [
                        {

                            "data": null,
                            "defaultContent": "<a  title='更改图标'  class='btn btn-primary btn-circle edit'>" +
                            "<i class='fa fa-pencil-square-o'></i>" +
                            "</a>",
//                            +
//                            "&nbsp;&nbsp;"
//                            +
//                            "<a  title='编辑'  class='btn btn-primary btn-circle edit'>" +
//                            "<i class='fa fa-edit'></i>" +
//                            "</a>",
//                            +
//                            "&nbsp;&nbsp;"
//                            +
//                            "<button type='button'  title='删除' class='btn btn-circle settingAdded'>" +
//                            "<i class='fa fa-recycle'></i>" +
//                            "</button>",
                            "targets": -1
                        }
                    ],
                    "createdRow": function (row, data, index) {
//                        kuserList.v.list.push(data);
                        $('td', row).eq(0).html("<input type='checkbox' value=" + data.id + ">");
                        $('td', row).eq(3).html("<img src='" + data.icon + "' width='100px' height='100px' />");
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
                        $('td', row).last().find(".edit").click(function () {
                            if (data.icon == '') {
                                kuserList.v.mainImageStatus = 0;

                                $('#mainPicture').prop('src', 'static/images/background.jpg');
                            } else {
                                kuserList.v.mainImageStatus = 1;

                                $('#mainPicture').prop('src', data.icon);
                            }

                            $('#hiddenId').val(data.level);

                            $('#infoModal').modal('show');
                        })
                    },
                    "fnServerParams": function (aoData) {
                        aoData.id = $("#id").val();
                        aoData.number = $("#number").val();
                        aoData.level = $("#level").val();
                        aoData.icon = $("#icon").val();
                    },
                    "fnDrawCallback": function (row) {
                        $bluemobi.uiform();
                    }
                });
            },
            AddImg: function () {
                // a标签绑定onclick事件
                $('#mainImage').click();
            },
            changeStatus: function () {
                kuserList.v.mainImageStatus = 1;
            },
            subInfo: function () {
                var flag = true;

                if (kuserList.v.mainImageStatus == 0) {
                    $bluemobi.notify("请上传图片", "error");
                    flag = false;
                    return;
                }

                // 所有的验证通过后，执行新增操作
                if (flag) {
                    console.log($('#hiddenId').val());
                    $("#infoForm").ajaxSubmit({
                        url: _basePath + "admin/level/save",
                        dataType: "json",
                        data: {
                            "level1": $('#hiddenId').val()
                        },
                        success: function (result) {
                            if (result > 0) {
                                window.location.href = _basePath + "level/index";
                            } else {
                                $bluemobi.notify("操作失败", "error");
                            }
                        }
                    });
                }
            },
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
            }
        }
    }
    $(document).ready(function () {
        kuserList.fn.init();
    });
</script>
</html>