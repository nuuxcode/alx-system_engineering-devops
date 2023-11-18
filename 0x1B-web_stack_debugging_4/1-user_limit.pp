# update soft limit
exec { 'update soft limit':
  command  => "sed -i 's/^holberton soft nofile.*/holberton soft nofile 8192/' /etc/security/limits.conf",
  provider => 'shell',
}

exec { 'update hard limit':
  command  => "sed -i 's/^holberton hard nofile.*/holberton hard nofile 8192/' /etc/security/limits.conf",
  provider => 'shell',
}
