default[:tempest][:use_virtualenv] = false
default[:tempest][:private_network_name] = "fixed"
default[:tempest][:ec2_access] = ""
default[:tempest][:ec2_secret] = ""
#
# Extra files used in tempest tests
#
default[:tempest][:extra_image_url] = "http://download.cirros-cloud.net/0.3.0/cirros-0.3.0-x86_64-uec.tar.gz"

#
# Dealing with platform dependent package names
#

case node["platform"]
    when "ubuntu"
        default[:tempest][:platform] = {
            :packages => ["libxslt1-dev","libffi-dev"]
        }
    when "centos"
         default[:tempest][:platform] = {
            :packages => ["libxslt-devel","libffi-devel"]
        }
end
