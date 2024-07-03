<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Personel Ekle</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
</head>
<body>
<!-- Menü dahil ediliyor -->
<jsp:include page="menu.jsp"/>
<div class="container">
    <h2>Personel Kayıt Formu</h2>
    <form id="personnelForm" action="personel" method="post">
        <div class="form-group">
            <label for="name">İsim:</label>
            <input type="text" class="form-control" id="name" name="name" required>
            <div class="invalid-feedback">Lütfen isim giriniz.</div>
        </div>
        <div class="form-group">
            <label for="surname">Soyisim:</label>
            <input type="text" class="form-control" id="surname" name="surname" required>
            <div class="invalid-feedback">Lütfen soyisim giriniz.</div>
        </div>
        <div class="form-group">
            <label for="idNumber">Sicil Numarası:</label>
            <input type="text" class="form-control" id="idNumber" name="idNumber">
        </div>
        <div class="form-group">
            <label for="departments">Departman:</label>
            <select multiple class="form-control" id="departments" name="departments">
                <option value="IT">IT</option>
                <option value="HR">HR</option>
                <option value="Finance">Finance</option>
                <option value="Sales">Sales</option>
                <option value="Marketing">Marketing</option>
            </select>
        </div>
        <div class="form-group">
            <label for="phone">Telefon:</label>
            <input type="text" class="form-control" id="phone" name="phone">
        </div>
        <div class="form-group">
            <label for="hireDate">İşe Giriş Tarihi:</label>
            <input type="date" class="form-control" id="hireDate" name="hireDate" required>
            <div class="invalid-feedback">Lütfen işe giriş tarihini giriniz.</div>
        </div>
        <div class="form-group">
            <label for="salary">Maaş Tutarı:</label>
            <input type="number" class="form-control" id="salary" name="salary" required>
            <div class="invalid-feedback">Lütfen maaş tutarını giriniz.</div>
        </div>
        <div class="form-group">
            <label for="isActive">Aktiflik:</label>
            <input type="checkbox" class="form-control" id="isActive" name="isActive">
        </div>
        <button type="submit" class="btn btn-primary">Kaydet</button>
    </form>
    <c:if test="${not empty message}">
        <div class="alert alert-success mt-3">${message}</div>
    </c:if>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/js.js"></script>
</body>
</html>

