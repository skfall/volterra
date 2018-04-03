<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title>{{ $meta->get('meta_title') }}</title>
	<meta name="keywords" content="{{ $meta->get('meta_keys') }}" />
	<meta name="description" content="{{ $meta->get('meta_desc') }}" />
	<meta name="_token" content="{{ csrf_token() }}">

	@if($config->site_index)
		<meta name="robots" content="index, follow" />
	@else
		<meta name="robots" content="noindex, nofollow" />
	@endif
	
	<meta name="author" content="Positive Business" />
	
	<?php /* STYLES */ ?>
	<link rel="stylesheet" type="text/css" href="{{ RS.'css/materialize.min.css' }}">
	<link rel="stylesheet" type="text/css" href="{{ RS.'css/jquery.fancybox.min.css' }}">
	<link rel="stylesheet" type="text/css" href="{{ RS.'css/app.css' }}">
	<link rel="stylesheet" type="text/css" href="{{ RS.'css/fonts.css' }}">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="{{ RS.'css/flag-icon.min.css' }}">
	
</head>
<body class="{{ $body_class }}">
	<script type="text/javascript">
		var RS = '<?= RS; ?>';
		var LANG = '<?= LANG; ?>';
	</script>
	@include('elements.header')
	<div class="container main_wrapper">
		@yield("content")
	</div>
	@include('elements.footer')
	<?php /* SCRIPTS */ ?>
	<script type="text/javascript" src="{{ RS.'js/jquery-2.2.4.min.js' }}"></script>
	<script type="text/javascript" src="{{ RS.'js/materialize.min.js' }}"></script>
	<script type="text/javascript" src="{{ RS.'js/jquery.fancybox.min.js' }}"></script>
	<script type="text/javascript" src="{{ RS.'js/jquery.maskedinput.min.js' }}"></script>
	<script type="text/javascript" src="{{ RS.'js/app.js' }}"></script>

</body>
</html>