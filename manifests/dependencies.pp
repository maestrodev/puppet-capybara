class capybara::dependencies {

  if ! defined(Package['libxml2'])         { package { 'libxml2':         ensure => installed } }
  if ! defined(Package['libxml2-devel'])   { package { 'libxml2-devel':   ensure => installed } }
  if ! defined(Package['libxslt'])         { package { 'libxslt':         ensure => installed } }
  if ! defined(Package['libxslt-devel'])   { package { 'libxslt-devel':   ensure => installed } }

}