require "bundle/tapioca"

Bundler::Plugin.add_hook("after-install-all") do |dependencies|
  system("bundle tapioca gem", exception: true)
end
