<footer class="page-footer">
  <div class="container">
    <div class="row">
      <div class="col l6 s12">
        <h5 class="white-text">Footer Content</h5>
        <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
      </div>
      <div class="col l4 offset-l2 s12">
        <h5 class="white-text">Links</h5>
        <ul>
          @foreach($nav as $nav_item)
            <?php
              $path = ""; 
              if ($nav_item->alias != 'home') {
                $path = LANG.'/'.$nav_item->alias.'/';
              }else{
                $path = '/'.LANG;
              }
            ?>
            <li class="{{ $nav_item->alias == FA ? 'active' : ''}}"><a href="{{ $path }}" class="grey-text text-lighten-3">{{$nav_item->name}}</a></li>
          @endforeach
        </ul>

        @if(isset($languages) && $languages)
          <div style="position: relative; height: 70px;">
            <div class="fixed-action-btn horizontal direction-top direction-left" style="position: absolute; display: inline-block; right: 24px; bottom: 0;">
              <a class="btn-floating btn-large red">
                <i class="large material-icons">language</i>
              </a>
              <ul>
                @foreach($languages as $lang)
                  <?php
                    $icon = $lang == 'ru' ? 'flag-icon-ru' : 'flag-icon-us';
                    $title = $lang == 'ru' ? 'Russian' : 'English';
                    $curr_actiion = Request::path();
                  ?>
                  <li style="text-align: center;" class="tooltipped" onclick="network.change_lang('{{ $lang }}', '{{ $curr_actiion }}')" data-position="top" data-tooltip="{{ $title }}"><a class="btn-floating red" style="opacity: 0; transform: scale(0.4) translateY(0px) translateX(40px);"><span class="flag-icon {{ $icon }}"></span></a></li>
                @endforeach
              </ul>
            </div>
          </div>
        @endif
      </div>
    </div>
  </div>
  <div class="footer-copyright">
    <div class="container">
      {{ date("Y").' '.$config->copyright }}        
    </div>
  </div>
</footer>