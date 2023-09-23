# Client configuration file (w/ Puppet)
file_line { 'Turn_off_passwd_auth':
  path   => '~/.ssh/school',
  line   => '    PasswordAuthentication no',
  ensure => present,
}

file_line { 'Declare_identity_file':
  path   => '~/.ssh/school',
  line   => '    IdentityFile ~/.ssh/school',
  ensure => present,
}
