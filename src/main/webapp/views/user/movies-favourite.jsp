<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Filmlane - Trang yêu thích</title>
  <%@ include file="/common/head_movies.jsp" %>
</head>

<body id="top">

  <!-- 
    - #HEADER
  -->

  <%@ include file="/common/header.jsp" %>
  
  <main>
    <article>

      <section class="tv-series">
        <div class="container">

          <p class="section-subtitle" style="padding-top: 80px;">Best TV Series</p>

          <h2 class="h2 section-title">DANH SÁCH YÊU THÍCH</h2>

          <ul class="movies-list">
			
            <c:forEach items="${videos}" var="video">
            <li>
              <div class="movie-card">
				<!-- /views/user/movies-details.jsp -->
                <a href="<c:url value='/video?action=watch&id=${video.href}'/>"> 
                  <figure class="card-banner">
                    <img src="<c:url value='${video.poster }'/>" alt="Sonic the Hedgehog 2 movie poster">
                  </figure>
                </a>

                <div class="title-wrapper">
                  <a href="<c:url value='/views/user/movies-details.jsp'/>">
                    <h3 class="card-title">${video.title }</h3>
                  </a>

                  <time datetime="2022">2022</time>
                </div>

                <div class="card-meta">
                  <div class="badge badge-outline">4K</div>
                  
                  <div class="duration">
                    <ion-icon name="eye-outline"></ion-icon>
                    <p>Views: ${video.views }</p>
                  </div>

                  <div class="duration">
                    <ion-icon name="share-social-outline"></ion-icon>
                    <p>Share: ${video.shares }</p>
                  </div>
                  
                  <div class="duration">
                    <ion-icon name="time-outline"></ion-icon>

                    <time datetime="PT122M">122 phút</time>
                  </div>

                  <div class="rating">
                    <ion-icon name="star"></ion-icon>

                    <data>7.8</data>
                  </div>
                </div>

              </div>
            </li>
            </c:forEach>
          </ul>
          
        </div>
      </section>

    </article>
  </main>
  
  
  <%@ include file="/common/footer.jsp" %>





  <!-- 
    - #GO TO TOP
  -->

  <a href="#top" class="go-top" data-go-top>
    <ion-icon name="chevron-up"></ion-icon>
  </a>





  <!-- 
    - custom js link
  -->
  <script src="<c:url value='/templates/user/assets/js/movies.js'/>"></script>

  <!-- 
    - ionicon link
  -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</html>