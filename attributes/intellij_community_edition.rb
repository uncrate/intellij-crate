case node[:platform]
when "centos", "redhat", "debian", "ubuntu"
  default['intellij_community_edition']['download_url']="http://download.jetbrains.com/idea/ideaIC-14.1.3.tar.gz"

  default['intellij_community_edition']['name']="IntelliJ IDEA 14 CE"
when "mac_os_x"
  default['intellij_community_edition']['download_url']="http://download.jetbrains.com/idea/ideaIC-14.1.3.dmg"

  default['intellij_community_edition']['name']="IntelliJ IDEA 14 CE"
end

default['intellij_community_edition']['install_path']="/usr/local"
default['intellij_community_edition']['install_dir']="ideaIC-14"

default['intellij_community_edition']['shortcut_name']="intellij-ideaIC"
