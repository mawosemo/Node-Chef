# InSpec test for recipe node::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end
# This is an example test, replace it with your own test.
describe port(80) do
  it { should be_listening }
end
describe service ('nginx') do
  it { should be_running }
  it { should be_enabled }
end

# describe service ('nodejs') do
#   it { should be_updatin }
#   it { should be_enabled }
# end

describe http('http://localhost',enable_remote_worker: true) do
  its('status'){ should cmp 502 } # we asking for the status of our requesrt to test if the proxy is working
end
