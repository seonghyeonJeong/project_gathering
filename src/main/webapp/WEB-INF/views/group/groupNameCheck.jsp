<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>���̵� �ߺ� üũ</title>
    <link href="CSS/subpage.css" rel="stylesheet">
    <style type="text/css"></style>
</head>

<body>
    <div id="wrap">
        <h1>���Ӹ� �ߺ�Ȯ��</h1>
        <form method=post name=formm1 id="theform" style="margin-right:0 " action="groupName_check_form">
            ���Ӹ� <input type=text name="group_name" value="${group_name}">
            <input type=submit value="�˻�" class="submit"><br>
            <div style="margin-top: 20px">
                <c:if test="${message == 1}">
                    <script type="text/javascript">
                        opener.document.getElementById("group_name").value="";
                    </script>
                    �̹� ������� ���Ӹ��Դϴ�.
                </c:if>
                <c:if test="${message==-1}">
                    ��� ������ ���Ӹ��Դϴ�.
                    <input type="button" value="���" onclick="nameok()">
                </c:if>
            </div>
        </form>
    </div>
    
    
<!-- group ��ũ��Ʈ -->    
<script type="text/javascript" src="../js/group.js"></script>    
</body>

</html>