<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">


    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"/>
    <link href="{{ asset('css/jquery-ui.css') }}" rel="stylesheet">
    <link href="{{ asset('css/backend.css') }}" rel="stylesheet">


</head>
<body>
<div id="app">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="/admin">{{ 'Dashboard' }}</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="{{ __('Toggle navigation') }}">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav mr-auto">

                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ml-auto">
                    <!-- Authentication Links -->
                    @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @endif
                    @else
                        <li class="nav-item">
                            <a class="nav-link" href="/article">Articles</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/admin/tag">Tags</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                  style="display: none;">
                                @csrf
                            </form>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>

    <main class="py-4 container main-content">
        @yield('content')
    </main>
</div>
<!-- scripts -->

{{--<script src="{{ asset('js/app.js') }}" defer></script>--}}
<script src="{{URL::asset('js/jquery 1.11.2.js')}}"></script>
<script src="{{URL::asset('js/jquery-ui.js')}}"></script>
<script src="{{URL::asset('js/jquery.validate.min.js')}}"></script>

{{--form validation--}}
<script>
    $("#article-from").validate();
</script>

<!-- fancy box -->

<link rel="stylesheet" href="{{URL::asset('/js/fancybox/source/jquery.fancybox.css?v=2.1.5')}}" type="text/css"
      media="screen"/>
<script type="text/javascript" src="{{URL::asset('/js/fancybox/source/jquery.fancybox.pack.js?v=2.1.5')}}"></script>
<link rel="stylesheet" href="{{URL::asset('/js/fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7')}}"
      type="text/css" media="screen"/>
<script type="text/javascript"
        src="{{URL::asset('js/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7')}}"></script>
<script type="text/javascript">
    $(function () {
        $(".fancybox").fancybox();
    });
</script>

<script>
    var path = "{{URL::to('/')}}";
</script>

{{--ckeditor--}}
<script src="{{ asset('js/functions.js') }}" defer></script>
<script type="text/javascript" src="{{URL::asset('/js/ckeditor/ckeditor.js')}}"></script>
<script>
    CKEDITOR.replace('description', {
        filebrowserUploadUrl: "{{route('ckeditor.upload')}}",
        filebrowserUploadMethod: 'form',
    });
</script>
</body>
</html>
