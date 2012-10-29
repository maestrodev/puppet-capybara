class capybara {

  include capybara::dependencies
  
  package { 'capybara':
    ensure => latest,
    provider => gem,
    require => Class['capybara::dependencies'],
  }

}

