guard :rspec, cmd: 'rspec' do
  # watch /lib/ files
  watch(%r{^lib/(.+).rb$}) do |m|
    "spec"
  end

  watch(%r{^lib/*/(.+).rb$}) do |m|
    "spec"
  end

  # watch /spec/ files
  watch(%r{^spec/(.+).rb$}) do |m|
    "spec/#{m[1]}.rb"
  end
  watch('spec/spec_helper.rb') { 'spec' }
end
