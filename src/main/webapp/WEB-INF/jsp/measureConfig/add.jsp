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

        <div class="row" class="tab-content">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables">
                                <colgroup>
                                    <col class="gradeA odd"/>
                                    <col class="gradeA even"/>
                                    <col class="gradeA odd"/>
                                </colgroup>
                                <thead>
                                <tr style="background-color: #666666">
                                    <th><c:if test="${part eq 0}">
                                            颈部
                                       </c:if>
                                        <c:if test="${part eq 1}">
                                            手部
                                        </c:if>
                                        <c:if test="${part eq 2}">
                                            脸部
                                        </c:if>
                                    </th>
                                    <th>x < 正常值</th>
                                    <th>含水量测试结果：干燥</th>
                                </tr>
                                <c:forEach items="${list1}" var="config">
                                    <tr>
                                        <c:if test="${config.typeY eq 0}">
                                            <th rowspan="3" style="vertical-align:middle">${config.typeDesc}</th>
                                        </c:if>
                                        <th> y
                                            <c:if test="${config.typeY eq 0}"> &lt; </c:if>
                                            <c:if test="${config.typeY eq 1}"> = </c:if>
                                            <c:if test="${config.typeY eq 2}"> &gt; </c:if>
                                            正常值
                                            <c:if test="${config.typeY eq 0}">（缺油）</c:if>
                                            <c:if test="${config.typeY eq 1}"> （正常） </c:if>
                                            <c:if test="${config.typeY eq 2}"> (滋润) </c:if>
                                            </th>
                                        <th>${config.result} &nbsp;&nbsp; <a  title=''  class='btn btn-primary btn-circle' onclick="dayshow.fn.showModel('${config.result}','${config.id}')"><i class='fa fa-pencil-square-o'></i></a></th>
                                    </tr>
                                </c:forEach>

                                <tr style="background-color: #666666">
                                    <th><c:if test="${part eq 0}">
                                        颈部
                                    </c:if>
                                        <c:if test="${part eq 1}">
                                            手部
                                        </c:if>
                                        <c:if test="${part eq 2}">
                                            脸部
                                        </c:if>
                                    </th>
                                    <th>x = 正常值</th>
                                    <th>含水量测试结果：正常</th>
                                </tr>
                                <c:forEach items="${list2}" var="config">
                                    <tr>
                                        <c:if test="${config.typeY eq 0}">
                                            <th rowspan="3" style="vertical-align:middle">${config.typeDesc}</th>
                                        </c:if>
                                        <th> y
                                            <c:if test="${config.typeY eq 0}"> &lt; </c:if>
                                            <c:if test="${config.typeY eq 1}"> = </c:if>
                                            <c:if test="${config.typeY eq 2}"> &gt; </c:if>
                                            正常值
                                            <c:if test="${config.typeY eq 0}">（缺油）</c:if>
                                            <c:if test="${config.typeY eq 1}"> （正常） </c:if>
                                            <c:if test="${config.typeY eq 2}"> (滋润) </c:if>
                                        </th>
                                        <th>${config.result} &nbsp;&nbsp; <a  title=''  class='btn btn-primary btn-circle' onclick="dayshow.fn.showModel('${config.result}','${config.id}')"><i class='fa fa-pencil-square-o'></i></a></th>
                                    </tr>
                                </c:forEach>

                                <tr style="background-color: #666666">
                                    <th><c:if test="${part eq 0}">
                                        颈部
                                    </c:if>
                                        <c:if test="${part eq 1}">
                                            手部
                                        </c:if>
                                        <c:if test="${part eq 2}">
                                            脸部
                                        </c:if>
                                    </th>
                                    <th>x > 正常值</th>
                                    <th>含水量测试结果：湿润</th>
                                </tr>
                                <c:forEach items="${list3}" var="config">
                                    <tr>
                                        <c:if test="${config.typeY eq 0}">
                                            <th rowspan="3" style="vertical-align:middle">${config.typeDesc}</th>
                                        </c:if>
                                        <th> y
                                            <c:if test="${config.typeY eq 0}"> &lt; </c:if>
                                            <c:if test="${config.typeY eq 1}"> = </c:if>
                                            <c:if test="${config.typeY eq 2}"> &gt; </c:if>
                                            正常值
                                            <c:if test="${config.typeY eq 0}">（缺油）</c:if>
                                            <c:if test="${config.typeY eq 1}"> （正常） </c:if>
                                            <c:if test="${config.typeY eq 2}"> (滋润) </c:if>
                                        </th>
                                        <th>${config.result} &nbsp;&nbsp; <a  title='' class='btn btn-primary btn-circle' onclick="dayshow.fn.showModel('${config.result}','${config.id}')"><i class='fa fa-pencil-square-o'></i></a></th>
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

    <!-- Modal -->
    <div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="pwdModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">结果</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="id" name="id" value/>
                    <form id="infoForm" method="post" enctype="multipart/form-data">
                        <input type="text" id="result" name="result" size="70"/>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" onclick="dayshow.fn.saveResult()" class="btn btn-primary">确定</button>
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
    var dayshow = {
        fn : {
            showModel : function(result,id) {
                $("#result").val(result);
                $("#id").val(id);
                $("#infoModal").modal("show");
            },

            saveResult : function() {
                $("#infoModal").ajaxSubmit({
                    type : "post",
                    url : "${contextPath}/admin/measureConfig/saveResult",
                    dataType : "json",
                    data : {
                        "id" : $("#id").val(),
                        "result" : $("#result").val()
                    },
                    success : function() {
                        window.location.href = _basePath + "admin/measureConfig/add";
                    }
                });
            }
        }
    }
</script>
</html>