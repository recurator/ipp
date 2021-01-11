
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ipp/version"

Gem::Specification.new do |spec|
  spec.name          = "ipp"
  spec.version       = Ipp::VERSION
  spec.authors       = ["Bilek Mirko"]
  spec.email         = ["bilekmirko@gmail.com"]

  spec.summary       = %q{Get computer public IP address}
  spec.description   = %q{Get computer public IP address using 'https://ipify.org'}
  spec.homepage      = "http://rubygems.org/gems/ipp"
  spec.license       = "MIT"
  spec.executables   << "ipp"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features|gem)/})
  end
  spec.bindir        = "bin"
  spec.executables   << "ipp"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
