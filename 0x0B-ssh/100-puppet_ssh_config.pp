# Client configuration file
include stdlib
file_line { 'Turn off passwd auth':
  ensure => present,
  line   => '    PasswordAuthentication no',
  path   => '~/.ssh/school',
}

file_line { 'Declare identity file':
  ensure => present,
  line   => '    IdentityFile ~/.ssh/school',
  path   => '~/.ssh/school',
}
