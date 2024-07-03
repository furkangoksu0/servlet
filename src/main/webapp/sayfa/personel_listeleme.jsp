<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>Personel Listele</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
</head>
<body>
<!-- Menü dahil ediliyor -->
<jsp:include page="menu.jsp"/>
<div class="container">
    <h2>Personel Listesi</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>İsim</th>
            <th>Soyisim</th>
            <th>Sicil No</th>
            <th>Departman</th>
            <th>Telefon</th>
            <th>İşe Giriş Tarihi</th>
            <th>Maaş</th>
            <th>Aktiflik</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="personel" items="${personelList}">
            <tr>
                <td>${personel.name}</td>
                <td>${personel.surname}</td>
                <td>${personel.idNumber}</td>
                <td>${personel.department}</td> <!-- departments yerine department kullanıldı -->
                <td>${personel.phone}</td>
                <td>${personel.hireDate}</td>
                <td>${personel.salary}</td>
                <td>
                    <c:choose>
                        <c:when test="${personel.isActive}">Aktif</c:when>
                        <c:otherwise>Pasif</c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <p>Toplam Personel Sayısı: <c:out value="${fn:length(personelList)}"/></p>
    <p>Tüm Personelin Toplam Maaş Tutarı: <c:out value="${totalSalary}"/></p>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/js.js"></script>
</body>
</html>


