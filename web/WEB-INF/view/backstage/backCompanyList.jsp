<%@ taglib prefix="s" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <style>
        .div1 {
            width: 100%;
            height: 700px;
            background-color: #c7ddef;
        }

        .div2 {
            padding-top: 5%;
            width: 90%;
            height: 75%;
            margin: 0 auto;

            padding-left: 10%;
            background-color: white;
        }
        .div3 {
            width: 100%;
            height: 20%;
            /*padding-right: 5%;*/
            /*background-color: #091fff;*/
            padding-top: 1%;
        }
    </style>
</head>
<body>

<div class="div1">
    <div class="div2">
        <table class="table table-bordered" style="width:90%;text-align: center">
            <thead>
            <tr>
                <td>编号</td>
                <td>公司名称</td>
                <td>用户名称</td>
                <td>电子邮箱</td>
                <td>电话</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <s:forEach begin="0" step="1" items="${companyList}" var="conpanyList">
                <tr>
                    <td>${conpanyList.id}</td>
                    <td>${conpanyList.companyName}</td>
                    <td>${conpanyList.username}</td>
                    <td>${conpanyList.email}</td>
                    <td>${conpanyList.phone}</td>
                    <td><a href="/company/deleteById.form?id=${conpanyList.id}" class="btn btn-info"><span class="glyphicon glyphicon-trash"></span> 删除</a></td>
                </tr>
            </s:forEach>
            </tbody>
        </table>
    </div>
    <div class="div3">
        <%--分页--%>
        <s:if test="${pageInfo.pages>0}">
            <nav>
                <ul class="pager">

                    <s:if test="${pageInfo.pageNum>1}">
                        <li><a href="/company/all.form?pageNum=1">首页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<=1}">
                        <li><a>首页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>1}">
                        <li><a href="/company/all.form?pageNum=${pageInfo.pageNum-1}">上一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<=1}">
                        <li><a>上一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum<pageInfo.pages}">
                        <li><a href="/company/all.form?pageNum=${pageInfo.pageNum+1}">下一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>=pageInfo.pages}">
                        <li><a>下一页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum!=pageInfo.pages}">
                        <li><a href="/company/all.form?pageNum=${pageInfo.pages}">尾页</a></li>
                    </s:if>

                    <s:if test="${pageInfo.pageNum>=pageInfo.pages}">
                        <li><a>尾页</a></li>
                    </s:if>
                </ul>
            </nav>
        </s:if>
    </div>

</div>

<!-- Latest compiled and minified JS -->
<script src="../js/jquery-2.1.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>