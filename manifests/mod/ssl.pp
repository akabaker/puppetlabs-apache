class apache::mod::ssl {
  apache::mod { 'ssl': }
  file { "${apache::params::vdir}/ssl.conf":
    ensure  => present,
    replace => false,
    content => template('apache/mod/ssl.conf.erb'),
  }
}
