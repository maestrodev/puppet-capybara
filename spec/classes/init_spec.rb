require 'spec_helper'

describe 'capybara' do
  
  it { should contain_package('capybara').with({
    :ensure => 'present',
    :provider => 'gem'
   })}
   
   it { should include_class('capybara::dependencies') }
  
end