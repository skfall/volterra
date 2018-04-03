<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>Document</title>
	<meta name="keywords" content="{{}}" />
	<meta name="description" content="" />

	@if($config->site_index)
		<meta name="robots" content="index, follow" />
	@else
		<meta name="robots" content="noindex, nofollow" />
	@endif
	
	<meta name="author" content="Positive Business" />
	
	<?php /* STYLES */ ?>
	@style('/css/materialize.min.css')
	@style('/css/app.css')
	@style('/css/fonts.css')
	@style('https://fonts.googleapis.com/icon?family=Material+Icons')

</head>
<body>
	<div class="container main_wrapper">
		@yield("content")
	</div>
	<?php /* SCRIPTS */ ?>
	@babelinit()
	@script("/js/jquery-2.2.4.min.js")
	@script("/js/materialize.min.js")
	@babelscript("/js/app.js")

</body>
</html>