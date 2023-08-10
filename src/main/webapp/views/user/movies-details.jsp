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
  <title>Filmlane - ${video.title}</title>
  <%@ include file="/common/head_movies.jsp" %>
</head>
<body id="top">

  <!-- 
    - #HEADER
  -->

  <%@ include file="/common/header.jsp" %>
  
  <main>
    <article>

      <!-- 
        - #MOVIE DETAIL
      -->

      <section class="movie-detail">
        <div class="container">

          <figure class="movie-detail-banner">

            <img src="<c:url value='${video.poster }'/>" alt="Free guy movie poster">

            <button class="play-btn">
              <ion-icon name="play-circle-outline"></ion-icon>
            </button>

          </figure>

          <div class="movie-detail-content">

            <p class="detail-subtitle">Phim vừa ra mắt</p>

            <h1 class="h1 detail-title">
            	
              Phim: <strong>${video.title}</strong> 
            </h1>

            <div class="meta-wrapper">

              <div class="badge-wrapper">
                <div class="badge badge-fill">18+</div>

                <div class="badge badge-outline">HD</div>
              </div>

              <div class="ganre-wrapper">
                <a href="#">Hài hước,</a>

                <a href="#">Hành động,</a>

                <a href="#">Phiêu lưu</a>

                <!-- <a href="#">Khoa học viễn tưởng</a> -->
              </div>

              <div class="date-time">

                <div>
                  <ion-icon name="calendar-outline"></ion-icon>

                  <time datetime="2021">2021</time>
                </div>

                <div>
                  <ion-icon name="time-outline"></ion-icon>

                  <time datetime="PT115M">115 phút</time>
                </div>

              </div>

            </div>

            <p class="storyline">
            	Mô tả nội dung video:  <strong>${video.description}</strong>
            </p>

            <div class="details-actions">
              <button >
                <span>
                <a href="#videofilm" class="btn btn-primary">
                <ion-icon name="play"></ion-icon>
               		 Xem Phim
                </a>
                </span>
              </button>
              <c:if test="${not empty sessionScope.currentUser}">
              	<button class="btn btn-primary">
                <!-- <button class="share"> -->
                  <ion-icon name="share-social"></ion-icon>
  
                  <span>Chia sẻ</span>
                <!-- <c:url value='/video?action=like&id=${video.href}'/>-->
	              </button>
	              <button id="likeOrUnlikeBtn" class="btn btn-primary">
	              <ion-icon name="heart" ></ion-icon>
	                	<c:choose>
	                		<c:when test="${flagLikedBtn == true}">
	                			Unline
	                		</c:when>
	                		<c:otherwise>
	                				Like
	                		</c:otherwise>
	                	</c:choose>
	              </button>
              </c:if>
              <input id="videoIdHdn" type="hidden" value="${video.href}"/>
            </div>
          </div>
        </div>
      </section>


      <div class="container">
        <p class="section-subtitle">- Best Trailer -</p>

        <h2 class="h2 section-title">MOVIES TRAILER OFFICIAL</h2> <br>

        <iframe id="videofilm" width="1280" height="660" src="https://www.youtube.com/embed/${video.href}" title="YouTube video player" 
        frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
      </div>


      <!-- 
        - #TV SERIES
      -->

      <section class="tv-series">
        <div class="container">

          <p class="section-subtitle">Best TV Series</p>

          <h2 class="h2 section-title">PHIM HÀNH ĐỘNG HAY</h2>

          <ul class="movies-list">

            <li>
              <div class="movie-card">

                <a href="<c:url value='/views/user/movies-details.jsp'/>">
                  <figure class="card-banner">
                    <img src="<c:url value='/templates/user/assets/images/series-1.png'/>" alt="Moon Knight movie poster">
                  </figure>
                </a>

                <div class="title-wrapper">
                  <a href="<c:url value='/views/user/movies-details.jsp'/>">
                    <h3 class="card-title">Moon Knight</h3>
                  </a>

                  <time datetime="2022">2022</time>
                </div>

                <div class="card-meta">
                  <div class="badge badge-outline">2K</div>

                  <div class="duration">
                    <ion-icon name="time-outline"></ion-icon>

                    <time datetime="PT47M">47 phút</time>
                  </div>

                  <div class="rating">
                    <ion-icon name="star"></ion-icon>

                    <data>8.6</data>
                  </div>
                </div>

              </div>
            </li>

            <li>
              <div class="movie-card">

                <a href="<c:url value='/views/user/movies-details.jsp'/>">
                  <figure class="card-banner">
                    <img src="<c:url value='/templates/user/assets/images/series-2.png'/>" alt="Halo movie poster">
                  </figure>
                </a>

                <div class="title-wrapper">
                  <a href="<c:url value='/views/user/movies-details.jsp'/>">
                    <h3 class="card-title">Halo</h3>
                  </a>

                  <time datetime="2022">2022</time>
                </div>

                <div class="card-meta">
                  <div class="badge badge-outline">2K</div>

                  <div class="duration">
                    <ion-icon name="time-outline"></ion-icon>

                    <time datetime="PT59M">59 phút</time>
                  </div>

                  <div class="rating">
                    <ion-icon name="star"></ion-icon>

                    <data>8.8</data>
                  </div>
                </div>

              </div>
            </li>

            <li>
              <div class="movie-card">

                <a href="<c:url value='/views/user/movies-details.jsp'/>">
                  <figure class="card-banner">
                    <img src="<c:url value='/templates/user/assets/images/series-3.png'/>" alt="Vikings: Valhalla movie poster">
                  </figure>
                </a>

                <div class="title-wrapper">
                  <a href="<c:url value='/views/user/movies-details.jsp'/>">
                    <h3 class="card-title">Vikings: Valhalla</h3>
                  </a>

                  <time datetime="2022">2022</time>
                </div>

                <div class="card-meta">
                  <div class="badge badge-outline">2K</div>

                  <div class="duration">
                    <ion-icon name="time-outline"></ion-icon>

                    <time datetime="PT51M">51 phút</time>
                  </div>

                  <div class="rating">
                    <ion-icon name="star"></ion-icon>

                    <data>8.3</data>
                  </div>
                </div>

              </div>
            </li>

            <li>
              <div class="movie-card">

                <a href="<c:url value='/views/user/movies-details.jsp'/>">
                  <figure class="card-banner">
                    <img src="<c:url value='/templates/user/assets/images/series-4.png'/>" alt="Money Heist movie poster">
                  </figure>
                </a>

                <div class="title-wrapper">
                  <a href="<c:url value='/views/user/movies-details.jsp'/>">
                    <h3 class="card-title">Money Heist</h3>
                  </a>

                  <time datetime="2017">2017</time>
                </div>

                <div class="card-meta">
                  <div class="badge badge-outline">4K</div>

                  <div class="duration">
                    <ion-icon name="time-outline"></ion-icon>

                    <time datetime="PT70M">70 phút</time>
                  </div>

                  <div class="rating">
                    <ion-icon name="star"></ion-icon>

                    <data>8.3</data>
                  </div>
                </div>

              </div>
            </li>

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
  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script>
		$('#likeOrUnlikeBtn').click(function() {
			var videoId = $('#videoIdHdn').val();
			$.ajax({
				url: 'video?action=like&id=' + videoId
			}).then(function(data) {
				var text = $('#likeOrUnlikeBtn').text();
				if(text.indexOf('Like') != -1) {
					$('#likeOrUnlikeBtn').text('Unlike');
				} else {
					$('#likeOrUnlikeBtn').text('Like');
				}
			}).fail(function(error) {
				alert('Oops!! Please try again ^^!');
			});
		});
	</script>
</body>

</html>