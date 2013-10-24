  <div class="container-fluid">
%include templates/snippet.errors errors=errors
%from urlparse import urljoin
     <div class="row">
          <h2>Targets</h2>
% for metric in metrics:
        <div class="span12 well">
        <dl class="dl-horizontal span6">
            <dt>ID</dt><dd>{{metric['id']}}</dd>
            <dt>png</dt><dd><a href="{{urljoin(config.graphite_url, "render/?target=%s" % metric['id'])}}"><i class="icon-picture"></i></a></dd>
            <dt>tags</dt><dd>
            <dl class="dl-horizontal span6" style="margin-top: 0px;">
                % for (tag_k,tag_v) in metric['tags'].items():
                    <dt>{{tag_k}}</dt>
                    % if tag_v:
                        <dd>{{tag_v}}</dd>
                    % else:
                        <dd>&nbsp;</dd>
                    % end
                %end
            </dl>
        </dd>
        </dl>
       </div>
%end
      </div>
    </div> <!-- /container -->
