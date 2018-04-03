<header>
	<nav>
		<div class="nav-wrapper container">
			<a href="{{ RS.LANG }}" class="brand-logo">Logo</a>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
				@foreach($top_nav as $nav_item)
					<?php
						$path = ""; 
						if ($nav_item->alias != 'home') {
							$path = RS.LANG.$nav_item->alias.'/';
						}else{
							$path = RS.LANG;
						}
						$active = $nav_item->alias == FA ? 'active' : '';
						if (FA == '' && $nav_item->alias == 'home') {
							$active = "active";
						}
					?>
					<li class="{{ $active }}"><a href="{{ $path }}">{{$nav_item->name}}</a></li>
				@endforeach
			</ul>
		</div>
	</nav>
</header>