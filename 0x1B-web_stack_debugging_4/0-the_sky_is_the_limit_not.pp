# Doc
exec { 'Increase the Limit':
  command  => '/usr/bin/env sed -i s/15/50000/ /etc/default/nginx',
} ->
exec { 'restart nginx':
  command => '/usr/bin/env service nginx restart',
}
