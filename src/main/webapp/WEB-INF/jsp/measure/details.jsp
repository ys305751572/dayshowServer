<%--
  Created by IntelliJ IDEA.
  User: wangbin
  Date: 2015/8/13
  Time: 14:28
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
    <title>测试详情</title>
    <%@ include file="../inc/css.jsp" %>
    <link href="static/js/plugins/dropper/jquery.fs.dropper.css" rel="stylesheet">
    <script src="static/js/plugins/dropper/jquery.fs.dropper.js"></script>
</head>

<body>

<div id="posts" class="wrapper">
    <%@ include file="../inc/nav.jsp" %>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">测试详情</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <form id="optionsBusinessForm" method="post" action="" class="form-horizontal" role="form">
                            <fieldset disabled="">
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">会员账号:</label>
                                    <div class="col-sm-5">
                                        <h4>${measure.user.nickname}(${measure.user.mobile})</h4>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">测试部位:</label>
                                    <div class="col-sm-5">
                                        <h4>
                                            <c:if test="${measure.part==0}" >
                                                <h4>颈部</h4>
                                            </c:if>
                                            <c:if test="${measure.part==1}">
                                                <h4>手部</h4>
                                            </c:if>
                                            <c:if test="${measure.part==2}">
                                                <h4>脸部</h4>
                                            </c:if>
                                        </h4>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">相关信息:</label>
                                    <div class="col-sm-5">
                                        <h4>
                                            <c:if test="${measure.user.gender==1}">
                                                男
                                            </c:if>
                                            <c:if test="${measure.user.gender==2}">
                                                女
                                            </c:if>
                                        ,${measure.user.age}岁,
                                            <c:if test="${skin==0}">
                                                敏感
                                            </c:if>
                                            <c:if test="${skin==1}">
                                                中性
                                            </c:if>
                                            <c:if test="${skin==2}">
                                                油性
                                            </c:if>
                                            <c:if test="${skin==3}">
                                                干性
                                            </c:if>
                                            <c:if test="${skin==4}">
                                                混合性
                                            </c:if>
                                            肌肤
                                        </h4>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">水分:</label>
                                    <div class="col-sm-5">
                                        <h4>${measure.measureMoisture}%</h4>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">油分:</label>
                                    <div class="col-sm-5">
                                        <h4>${measure.measureGrease}%</h4>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">肌肤状况:</label>
                                    <div class="col-sm-5">
                                        <h4>${result}</h4>
                                    </div>
                                </div>


                            </fieldset>
                        </form>

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

</html>