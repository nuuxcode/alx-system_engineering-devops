# replace .phpp with .php in wp-settings.php
exec { 'fix wordpress':
  command     => "sed -i 's/\\.phpp'/\\.php'/g' wp-settings.php",
  cwd         => '/var/www/html',
  refreshonly => true,
}
