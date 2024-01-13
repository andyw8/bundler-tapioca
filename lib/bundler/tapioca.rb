# frozen_string_literal: true

require_relative "tapioca/version"

Bundler::Plugin.add_hook("after-install-all") do |dependencies|
  puts "running tapioca..."
  system("bundle tapioca gem", exception: true)
end
