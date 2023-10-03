# Install nginx with puppet
package { 'nginx':
  ensure => 'installed',
}

exec { 'append_add_header':
  command => '/usr/bin/sed -i "0,/location \/ {/s/location \/ {/&\n\t\tadd_header X-Served-By $HOSTNAME;/" /etc/nginx/sites-available/default',
}
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => Package['nginx'],
}
