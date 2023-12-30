<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a href="{{ url('/') }}" class="navbar-brand" rel="home" aria-current="page"><img width="118" height="30"
                src="{{ asset('frontend') }}/wp-content/uploads/2019/04/logo_white1.png" class="img-responsive"
                alt="Design Associates" /></a><button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="fa fa-bars" style="font-size: 22px; position: relative; top: 2px;"></span> Menu
        </button>
        <div id="ftco-nav" class="collapse navbar-collapse">
            <ul id="menu-header-menu" class="navbar-nav ml-auto">
                <li id="menu-item-17" class="nav-item active"><a href="{{ url('/') }}" aria-current="page"
                        class="nav-link">Home</a></li>
                <li id="menu-item-41" class="nav-item"><a href="{{ route('about_us') }}" class="nav-link">About</a></li>
                <li id="menu-item-40" class="nav-item"><a href="{{ route('our.portfolio') }}" class="nav-link">Portfolio</a>
                </li>
                <li id="menu-item-38" class="nav-item"><a href="{{ route('our.blog') }}" class="nav-link">Blog</a></li>
                <li id="menu-item-37" class="nav-item"><a href="{{ route('contect') }}" class="nav-link">Contact</a>
                </li>
            </ul>
        </div>
        <div id="searchid" class="searchform">

        </div>
        <div id="dropdownid" class="cartdown">
            
            <!-- I changed <button class="cartbtn"> to <div class="cartbtn"> -->
            <div class="cartdown-content">
                <div class="widget_shopping_cart_content" style="opacity: .2;"></div>
            </div>
        </div>
    </div>
</nav>
