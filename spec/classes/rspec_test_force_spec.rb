require 'spec_helper'

describe 'rspec_test' do
  context 'test' do
    it { is_expected.to compile.with_all_deps }
  end
  context 'should have exported resources' do
    # The following causes 
    # Could not find terminus puppetdb for indirection catalog
    Puppet[:storeconfigs] = true
    subject { exported_resources }
    it { is_expected.to contain_nagios_host('confined') }
    it { is_expected.to contain_nagios_host('unconfined') }
  end
end
