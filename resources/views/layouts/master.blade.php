<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/jquery 1.11.2.js') }}"></script>
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/jquery-ui.js') }}" defer></script>
    <script src="{{ asset('js/functions.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->

    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/jquery-ui.css') }}" rel="stylesheet">
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/frontend.css') }}" rel="stylesheet">

</head>
<body>
<div id="app">
    <header class="header">
        <nav class="navbar navbar-expand-md navbar-light shadow-sm main-nav">
            <div class="container">
                <a class="navbar-brand" href="/">Medium</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/">Our Story</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/">Membership</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/">Write</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="main-header">
            <div class="container">
                <div class="row">
                    <div class="left-text col-xs-12 col-sm-6">
                        <h1>Explore new perspectives</h1>
                        <br><br>
                        <h3>Read and share ideas from independent voices, world-class publications, and experts from
                            around the globe. Everyone's welcome.</h3>
                    </div>
                    <div class="right-image col-xs-12 col-sm-6">
                        <img src="{{ URL::asset("images/").'/logo.png'}}">
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main class="py-4 container main-content">
        @yield('content')
    </main>
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <h2>Medium</h2>
                </div>
                <div class="col-6">
                    <ul class="footer-ul">
                        <li>Legal</li>
                        <li>Help</li>
                        <li>About</li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</div>
    <script type="text/javascript">
        $(function () {
            var height = $(".header").height();
            var lastScrollTop = height;
            $(window).scroll(function() {
                var st = $(this).scrollTop();
                if (st > lastScrollTop){
                    $('.main-nav').css('background', '#fff');
                } else {
                    $('.main-nav').css('background', '#ffc017');
                }
                // lastScrollTop = st;
            });
        });
</script>
</body>
</html>
