# kills a process named killmenow
exec { 'killmenow':
  command   => '/usr/bin/pkill -TERM killmenow',
}
