Gem::Specification.new do |spec|
  spec.name                    = "fvus-jekyll-theme"
  spec.version                 = "2.3.0"
  spec.authors                 = ["Digital Solutions Inc. Europe"]
  spec.email                   = ["arjun.yadav@yahoo.com"]

  spec.summary                 = "Multiphysics Solver."
  spec.homepage                = "http://www.digital-sol.co.jp/wildkatze/index_en.html"
  spec.license                 = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files                   = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_learning|_mygallery|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9"
  spec.add_runtime_dependency "jekyll-default-layout", "~> 0.1.4"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-github-metadata", "~> 2.13"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.2.1"
  spec.add_runtime_dependency "jemoji", "~> 0.12"
  spec.add_runtime_dependency "kramdown", "~> 2.3.1"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1.0"
end
