class capybara::webkit {

  include capybara, capybara::webkit::dependencies

  package { ['capybara-webkit', 'headless']:
    ensure => latest,
    provider => gem,
    require => Class['capybara', 'capybara::webkit::dependencies'],
  }
}

