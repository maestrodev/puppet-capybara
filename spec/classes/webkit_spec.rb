require 'spec_helper'

describe 'capybara::webkit' do
  
  it { should contain_package('capybara-webkit').with({
    :ensure => 'present',
    :provider => 'gem'
   })}

   it { should contain_package('headless').with({
     :ensure => 'present',
     :provider => 'gem'
    })}

   
   it { should include_class('capybara::webkit::dependencies') }
  
end