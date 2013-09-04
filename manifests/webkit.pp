class capybara::webkit($ensure = 'present') {

  include capybara

  class {'capybara::webkit::dependencies':
  }

  package { ['capybara-webkit', 'headless']:
    ensure   => $ensure,
    provider => gem,
    require  => Class['capybara', 'capybara::webkit::dependencies'],
  }
}

