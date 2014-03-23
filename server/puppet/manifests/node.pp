node precise64server {
  Exec {
    path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
  }

  group { 'puppet':   ensure => present }
  group { 'www-data': ensure => present }

  include curl
  include fail2ban
  include unattended-upgrades
  include nginx
  include vim
}
