case node[:platform]
when "centos", "redhat", "debian", "ubuntu"
  default['intellij_community_edition']['download_url']="http://download.jetbrains.com/idea/ideaIC-12.1.4.tar.gz"
  default['intellij_community_edition']['checksum']="d1307a88263147ab537b5ed61acc878ead6ca31422dc8ac652fbb551bd9300cd"
when "mac_os_x"
  default['intellij_community_edition']['linux']['download_url']="http://download.jetbrains.com/idea/ideaIC-12.1.6.dmg"
  default['intellij_community_edition']['linux']['checksum']="e5120d032265d7607d7932204642c012ecf2f8328b04ee52006212bc8820d6ce"
end

default['intellij_community_edition']['install_path']="/usr/local"
default['intellij_community_edition']['install_dir']="ideaIC-12"

default['intellij_community_edition']['name']="IntelliJ IDEA Community Edition"
default['intellij_community_edition']['shortcut_name']="intellij-ideaIC"
