class capybara {

  include capybara::dependencies
  
  package { 'capybara':
    ensure => present,
    provider => gem,
    require => Class['capybara::dependencies'],
  }

}

