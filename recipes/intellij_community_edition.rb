return if skip_unsupported_platform

intellij_tar_filename = File.basename(node['intellij_community_edition']['download_url'])
intellij_tar_filepath = "#{Chef::Config['file_cache_path']}/#{intellij_tar_filename}"
intellij_extract_path = "#{Chef::Config['file_cache_path']}/intellij/#{node['intellij_community_edition']['checksum']}"
intellij_install_path = "#{node['intellij_community_edition']['install_path']}/#{node['intellij_community_edition']['install_dir']}"

case node[:platform]
when "centos", "redhat", "debian", "ubuntu"
  include_recipe "ark"

  ark node['intellij_community_edition']['install_dir'] do
    url node['intellij_community_edition']['download_url']
    path node['intellij_community_edition']['install_path']
    checksum node['intellij_community_edition']['checksum']
    mode 0755
    action :put
  end

  template "/usr/share/applications/#{node['intellij_community_edition']['shortcut_name']}.desktop" do
    source "intellij_community_edition.desktop.erb"
    mode "0644"
  end
when "mac_os_x"
  include_recipe "dmg"

  dmg_package node['intellij_community_edition']['name'] do
      source node['intellij_community_edition']['download_url']
      owner node['uncrate']['user']
      action :install
    end
end