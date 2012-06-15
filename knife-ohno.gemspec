$:.push File.expand_path("../lib", __FILE__)
Gem::Specification.new do |s|
  s.name = "knife-ohno"
  s.version = "0.1.0"
  s.date = "2012-06-15"
  s.authors = ["Mandi Walls"]
  s.email = ["mandi@opscode.com"]
  s.homepage = "https://github.com/lnxchk/Ohno"
  s.summary = %q{knife ohno}
  s.description = %q{A messy client-status watcher plugin for Chef::Knife}
  s.licenses = ['']

  s.files = ["lib/chef/knife/ohno.rb"]
  s.require_paths = ["lib"]

end
