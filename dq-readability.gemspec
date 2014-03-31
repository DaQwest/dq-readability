# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "dq-readability"
  s.version     = '1.0.5'
  s.authors     = ["Prateek Papriwal"]
  s.email       = ["papriwalprateek@gmail.com"]
  s.homepage    = "http://github.com/DaQwest/dq-readability"
  s.summary     = %q{Port of arc90's readability project to ruby}
  s.description = %q{Extracts main content of the webpage. Presents in good readable format.}

  s.rubyforge_project = "dq-readability"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", ">= 2.8"
  s.add_development_dependency "rspec-expectations", ">= 2.8"
  s.add_development_dependency "rr", ">= 1.0"
  s.add_dependency 'nokogiri', '>= 1.4.2'
  s.add_dependency 'guess_html_encoding', '>= 0.0.4'
end
