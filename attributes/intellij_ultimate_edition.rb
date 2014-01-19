case node[:platform]
when "centos", "redhat", "debian", "ubuntu"
  default['intellij_ultimate_edition']['download_url']="http://download.jetbrains.com/idea/ideaIU-13.0.1.tar.gz"

  default['intellij_ultimate_edition']['name']="IntelliJ IDEA 13 IU"
when "mac_os_x"
  default['intellij_ultimate_edition']['download_url']="http://download.jetbrains.com/idea/ideaIU-13.0.1.dmg"

  default['intellij_ultimate_edition']['name']="IntelliJ IDEA 13 IU"
end

default['intellij_ultimate_edition']['install_path']="/usr/local"
default['intellij_ultimate_edition']['install_dir']="ideaIU-13"

default['intellij_ultimate_edition']['shortcut_name']="intellij-ideaIU"