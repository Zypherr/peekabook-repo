<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="library,peekabook,book,author,ebook,onepage,business" />
    <meta name="author" content="Maalik Rawoot" />

    <title>PeekaBook - Turning your next page</title>

    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/fonts/css/fonts.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/responsive.css" />
  </head>

  <body id="top-header">
    <header>

      <div class="site-navigation" id="mainmenu-area">
        <nav class="navbar navbar-expand-lg">
          <div class="container">
            <a class="navbar-brand" href="index.html">
              <img
                src="assets/images/peekabook-logo.png.png"
                alt="Peekabook"/>
            </a>

            <div class="collapse navbar-collapse" id="navbarMenu">
              <ul class="navbar-nav ml-auto">
                
                <li class="nav-item">
                  <a href="#about" class="nav-link js-scroll-trigger">
                    About
                  </a>
                </li>
                
                <li class="nav-item">
                  <a href="#pricing" class="nav-link js-scroll-trigger">
                    Recommend a book
                  </a>
                </li>

                <li class="nav-item">
                  <a href="#contact" class="nav-link js-scroll-trigger">
                    Contact
                  </a>
                </li>
                
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </header>

    <section class="banner pb-80">
      <div class="container">
        <div class="row align-items-center justify-content-between">
          <div class="col-md-12 col-lg-6">
            <div class="banner-content">
              <span class="subheading">Explore the unexplored!</span>
              <h1>Let us unlock your next chapter.</h1>
              <form action="scripts/php/fetchBook.php" method="Post">
              <ul>
                <li style="margin-bottom: 2%;">
                  <?php include_once "scripts/php/dropdownPopulate.php"; ?>
                </li>
              
              </ul>
              <input type="submit" name="submit" class="btn btn-main"/>
              </form>            
            </div>
          </div>
          
          <div class="col-lg-5">
            <div class="banner-img">
              <img
                src="assets/images/banner/book.png"
                alt=""
                class="img-fluid"
              />
            </div>
          </div>
        </div>
      </div>
    </section>

    
    <section class="footer pt-120">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 mr-auto col-sm-6 col-md-12">
            <div class="widget footer-widget mb-5 mb-lg-0">
              <h5 class="widget-title">PeekaBook</h5>
              <p class="mt-3">
                Let us take a peekabook into our online library and let us choose the right book based on your prefernce.
              </p>
            </div>
          </div>

          <div class="col-lg-6 col-sm-6 col-md-12">
            <div class="row">
              <div class="col-lg-6 col-md-6">
                <div class="footer-widget footer-contact mb-5 mb-lg-0">
                  <ul class="list-unstyled">
                    <li>+27 71 553 5046</li>
                    <li>Cape Town</li>
                    <li>Maalik@gmail.com</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="footer-btm">
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <div class="copyright">
                <p>
                  @ 2022 Copyright reserved to my local host ☺ by
                  <a href="https://www.facebook.com/maalik.rawoot">Maalik Rawoot</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> 
  </body>
</html>
