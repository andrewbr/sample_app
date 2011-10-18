# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec-mocks}
  s.version = "2.0.0.beta.18"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{David Chelimsky}, %q{Chad Humphries}]
  s.date = %q{2010-07-21}
  s.description = %q{RSpec's 'test double' framework, with support for stubbing and mocking}
  s.email = %q{dchelimsky@gmail.com;chad.humphries@gmail.com}
  s.extra_rdoc_files = [%q{README.markdown}]
  s.files = [%q{README.markdown}]
  s.homepage = %q{http://github.com/rspec/mocks}
  s.post_install_message = %q{**************************************************

  Thank you for installing rspec-mocks-2.0.0.beta.18
  
**************************************************
}
  s.rdoc_options = [%q{--charset=UTF-8}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{rspec}
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{rspec-mocks-2.0.0.beta.18}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec-core>, ["= 2.0.0.beta.18"])
      s.add_development_dependency(%q<rspec-expectations>, ["= 2.0.0.beta.18"])
    else
      s.add_dependency(%q<rspec-core>, ["= 2.0.0.beta.18"])
      s.add_dependency(%q<rspec-expectations>, ["= 2.0.0.beta.18"])
    end
  else
    s.add_dependency(%q<rspec-core>, ["= 2.0.0.beta.18"])
    s.add_dependency(%q<rspec-expectations>, ["= 2.0.0.beta.18"])
  end
end
