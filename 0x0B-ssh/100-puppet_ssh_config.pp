# Client configuration file
include stdlib

file_line { 'ssh_host_school':
  path   => '~/.ssh/school',
  line   => 'Host school',
  match  => '^Host school$',
}

file_line { 'ssh_hostname_school':
  path   => '~/.ssh/school',
  line   => '    HostName 54.172.47.106',
  match  => '^    HostName 54.172.47.106$',
}

file_line { 'ssh_user_school':
  path   => '~/.ssh/school',
  line   => '    User ubuntu',
  match  => '^    User ubuntu$',
}

file_line { 'ssh_identity_file_school':
  path   => '~/.ssh/school',
  line   => '    IdentityFile ~/.ssh/school',
  match  => '^    IdentityFile ~/.ssh/school$',
}

file_line { 'ssh_password_authentication_school':
  path   => '~/.ssh/school',
  line   => '    PasswordAuthentication no',
  match  => '^    PasswordAuthentication no$',
}


