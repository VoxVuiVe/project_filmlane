<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer class="footer">

    <div class="footer-top">
      <div class="container">

        <div class="footer-brand-wrapper">

          <a href="<c:url value='/views/user/index.jsp'/>" class="logo">
            <img src="<c:url value='/templates/user/assets/images/logo.svg'/>" alt="Filmlane logo">
          </a>

          <ul class="footer-list">

            <li>
              <a href="<c:url value='/views/user/index.jsp'/>" class="footer-link">Trang chủ</a>
            </li>

            <li>
              <a href="#" class="footer-link">Phim hot</a>
            </li>

            <li>
              <a href="#" class="footer-link">Phim lẻ</a>
            </li>

            <li>
              <a href="#" class="footer-link">Phim bộ</a>
            </li>

            <li>
              <a href="<c:url value='/views/user/movies-favourite.jsp'/>" class="footer-link">Phim yêu thích</a>
            </li>

          </ul>

        </div>

        <div class="divider"></div>

        <div class="quicklink-wrapper">

          <ul class="quicklink-list">

            <li>
              <a href="#" class="quicklink-link">Faq</a>
            </li>

            <li>
              <a href="#" class="quicklink-link">Help center</a>
            </li>

            <li>
              <a href="#" class="quicklink-link">Terms of use</a>
            </li>

            <li>
              <a href="#" class="quicklink-link">Privacy</a>
            </li>

          </ul>

          <ul class="social-list">

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-facebook"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-twitter"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-pinterest"></ion-icon>
              </a>
            </li>

            <li>
              <a href="#" class="social-link">
                <ion-icon name="logo-linkedin"></ion-icon>
              </a>
            </li>

          </ul>

        </div>

      </div>
    </div>

    <div class="footer-bottom">
      <div class="container">

        <p class="copyright">
          Copyright &copy; 2022 <a href="#">Văn Võ</a>. All Rights Reserved
        </p>

        <img src="<c:url value='/templates/user/assets/images/footer-bottom-img.png'/>" alt="Online banking companies logo" class="footer-bottom-img">

      </div>
    </div>

  </footer>
  
  <a href="#top" class="go-top" data-go-top>
    <ion-icon name="chevron-up"></ion-icon>
  </a>





  <!-- 
    - custom js link
  -->
  <script src="./assets/js/movies.js"></script>

  <!-- 
    - ionicon link
  -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>