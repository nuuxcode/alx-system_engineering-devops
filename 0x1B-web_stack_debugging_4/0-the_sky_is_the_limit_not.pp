# instal the_sky_is_the_limit_no
exec { 'update ulimit':
  command => "sed -i 's/^ULIMIT=.*/ULIMIT=\"-n 15000\"/' /etc/default/nginx",
  path    => ['/bin', '/usr/bin'],
}
