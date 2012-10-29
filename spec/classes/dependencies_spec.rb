require 'spec_helper'

describe 'capybara::dependencies' do
  
  it { should contain_package('libxml2') }
  it { should contain_package('libxml2-devel') }
  it { should contain_package('libxslt') }
  it { should contain_package('libxslt-devel') }
  
end
