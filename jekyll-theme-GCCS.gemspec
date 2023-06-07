# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-GCCS"
  spec.version       = "0.1.0"
  spec.authors       = ["Mikael Vejdemo-Johansson"]
  spec.email         = ["michiexile@gmail.com"]

  spec.summary       = "Jekyll Theme for the CUNY Graduate Center's Computer Science / Data Science Progrm"
  spec.homepage      = "https://github.com/michiexile/jekyll-theme-GCCS"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
