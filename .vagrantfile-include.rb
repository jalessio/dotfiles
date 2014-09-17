# This file exists to centralize configuration that you'd like
# in every single Vagrantfile on your system.
#
# This is included in a Vagrantfile like this:
#   eval File.read(ENV['VAGRANTFILE_INCLUDE']) if File.exists?(ENV['VAGRANTFILE_INCLUDE'].to_s)

# Configuration for vagrant-cachier plugin. To use these features
# do "vagrant plugin install vagrant-cachier". On Ubuntu you'll also
# need to "apt-get install nfs-kernel-server"
# Docs @ http://fgrehm.viewdocs.io/vagrant-cachier/usage
if Vagrant.has_plugin?('vagrant-cachier')
  config.cache.scope = :box
  config.cache.synced_folder_opts = {
    type: :nfs,
    # The nolock option can be useful for an NFSv3 client that wants to avoid the
    # NLM sideband protocol. Without this option, apt-get might hang if it tries
    # to lock files needed for /var/cache/* operations. All of this can be avoided
    # by using NFSv4 everywhere. Please note that the tcp option is not the default.
   mount_options: ['rw', 'vers=3', 'tcp', 'nolock']
  }
end
