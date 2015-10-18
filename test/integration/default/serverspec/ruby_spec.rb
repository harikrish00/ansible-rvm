require 'spec_helper'


ruby_versions = ['ruby-2.2.1', 'ruby-2.2.2', 'ruby-2.2.3', 'jruby-1.7.22']
false_version = 'ruby-2.2.0'

describe file('/home/vagrant/.rvm/bin/rvm') do
  it { should exist }
  it { should be_owned_by 'vagrant' }
end

ruby_versions.each do |version|
  describe command("su - vagrant -c 'rvm #{version} do true'") do
    its(:exit_status) { should eq 0 }
  end
end

describe command("su - vagrant -c 'rvm #{false_version} do true'") do
  its(:stderr) { should match /^Ruby #{false_version} is not installed/ }
end
