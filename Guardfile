# frozen_string_literal: true

# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## set this to only include directories you want to watch
ignore(
  %r{^node_modules/},
  %r{^storage/},
  %r{^client/},
  %r{^bin/}
)

guard :rspec, cmd: './bin/rspec' do
  require 'guard/rspec/dsl'
  dsl = Guard::RSpec::Dsl.new(self)

  # RSpec files
  rspec = dsl.rspec
  watch(rspec.spec_files)

  # Ruby files
  ruby = dsl.ruby
  dsl.watch_spec_files_for(ruby.lib_files)

  # Rails files
  rails = dsl.rails(view_extensions: %w[erb])
  dsl.watch_spec_files_for(rails.app_files)

  watch(%r{app/controllers/(.*)_controller.rb}) do |m|
    "#{rspec.spec_dir}/requests/#{m[1]}_spec.rb"
  end
end

guard :rubocop, all_on_start: false, cli: ['--server', '--autocorrect-all'] do
  watch(/.+\.rb$/)
end

guard :yard, server: false do
  watch(/.+\.rb$/)
end
