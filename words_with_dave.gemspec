
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "words_with_dave/version"

Gem::Specification.new do |spec|
  spec.name          = "words_with_dave"
  spec.version       = WordsWithDave::VERSION
  spec.authors       = ["David Jungst"]
  spec.email         = ["djungst@gmail.com"]

  spec.summary       = "This is an example Gem"
  spec.homepage      = "https://github.com/wdjungst/words_with_dave"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
