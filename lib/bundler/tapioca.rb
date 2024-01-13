# frozen_string_literal: true

require_relative "tapioca/version"

Bundler::Plugin.add_hook("after-install-all") do |dependencies|
  system("bundle tapioca gem", exception: true)
end
