require_relative "lib/solargraph/standardrb/version"

Gem::Specification.new do |spec|
  spec.name = "solargraph-standardrb"
  spec.version = Solargraph::Standardrb::VERSION
  spec.authors = ["Yana Agun Siswanto"]
  spec.email = ["yana.developer@gmail.com"]

  spec.summary = "Solargraph Standardrb reporter"
  spec.description = "Solargraph Standardrb reporter"
  spec.homepage = "https://github.com/bekicot/solargraph-standardrb"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "solargraph", "~> 0.39"
  spec.add_runtime_dependency "standard", "~> 0.2.4"
end
