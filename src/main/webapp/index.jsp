<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Anasayfa</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
</head>
<body>
<!-- Menü dahil ediliyor -->
<jsp:include page="/sayfa/menu.jsp"/> <!-- Menü dosyasının yolunda baştaki slash ekledim -->
<div class="container">
    <h2>Hoş Geldiniz</h2>
    <p>Personel kayıt sistemine hoş geldiniz. Yukarıdaki menüyü kullanarak işlemlerinizi gerçekleştirebilirsiniz.</p>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/js.js"></script>
</body>
</html>
