require 'chefspec'
require 'chefspec/policyfile'

at_exit { ChefSpec::Coverage.report! }
#double colon how you access a program or packaged in ruby
# in ruby exaclamation forces changes to permenant on variable
#report for testing any recipes without unit testing report to developer to write a test
