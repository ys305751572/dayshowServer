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
    <title>查看管理员</title>
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
                <h1 class="page-header">查看管理员</h1>
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
                                    <label  class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-5">
                                        <h4>${admin.name}</h4>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">账号:</label>
                                    <div class="col-sm-5">
                                        <h4>${admin.username}</h4>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label  class="col-sm-2 control-label">电话:</label>
                                    <div class="col-sm-5">
                                        <h4>${admin.mobile}</h4>
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