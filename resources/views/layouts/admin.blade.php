<!DOCTYPE html>

<html lang="en">
<head><script nonce="c9a34e8c-d409-4739-93b3-5b6cf2ec7cc0">(function(w,d){!function(a,e,t,r){a.zarazData=a.zarazData||{},a.zarazData.executed=[],a.zarazData.tracks=[],a.zaraz={deferred:[]},a.zaraz.track=(e,t)=>{for(key in a.zarazData.tracks.push(e),t)a.zarazData["z_"+key]=t[key]},a.zaraz._preSet=[],a.zaraz.set=(e,t,r)=>{a.zarazData["z_"+e]=t,a.zaraz._preSet.push([e,t,r])},a.addEventListener("DOMContentLoaded",(()=>{var t=e.getElementsByTagName(r)[0],z=e.createElement(r),n=e.getElementsByTagName("title")[0];n&&(a.zarazData.t=e.getElementsByTagName("title")[0].text),a.zarazData.w=a.screen.width,a.zarazData.h=a.screen.height,a.zarazData.j=a.innerHeight,a.zarazData.e=a.innerWidth,a.zarazData.l=a.location.href,a.zarazData.r=e.referrer,a.zarazData.k=a.screen.colorDepth,a.zarazData.n=e.characterSet,a.zarazData.o=(new Date).getTimezoneOffset(),z.defer=!0,z.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a.zarazData))),t.parentNode.insertBefore(z,t)}))}(w,d,0,"script");})(window,document);</script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ isset($title) ? $title.' | '.config('app.name') : config('app.name') }}</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

    <link rel="stylesheet" href="/adminlte/plugins/fontawesome-free/css/all.min.css">

    <link rel="stylesheet" href="/adminlte/dist/css/adminlte.min.css?v=3.2.0">
    @stack('css')
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

<!-- navbar -->
    @include('layouts.inc_admin.navbar')
<!-- akhir navbar -->
    @include('layouts.inc_admin.sidebar')
<!-- sidebar -->

<!-- akhir sidebar -->

<!-- content header -->
<div class="content-wrapper">

    <div class="content-header">
        <div class="container-fluid mb-2">
            @yield('content-header')
        </div>
    </div>
    <!-- akhir content header -->

<!-- main content -->
<div class="content">
    <div class="container-fluid">
    @yield('content')
</div>
</div>

</div>
<!-- akhir main -->

<!-- control sidebar -->
<aside class="control-sidebar control-sidebar-dark">

<div class="p-3">
<h5>Title</h5>
<p>Sidebar content</p>
</div>
</aside>
<!-- /akhir sidebar -->

<!-- footer -->
<footer class="main-footer">

<div class="float-right d-none d-sm-inline">
    Version1.0.1
</div>

<strong>Copyright &copy; 2022 Dina Rahmawati.</strong> All rights reserved.
</footer>
</div>
<!-- wraper -->
@yield('modal')


<script src="/adminlte/plugins/jquery/jquery.min.js"></script>

<script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="/adminlte/dist/js/adminlte.min.js?v=3.2.0"></script>
@stack('js')
</body>
</html>
