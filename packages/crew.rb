require 'package'

class Crew < Package                 # The first character of the class name must be upper case
  description 'Chromebrew is a package manager for Chromebooks.'
  homepage 'https://github.com/skycocker/chromebrew'
  version 'latest'
  license 'GPL-3' # license of source
  compatibility 'all'
  source_url 'https://github.com/skycocker/chromebrew/blob/master/bin/crew'
  source_sha256 '62adfca89b0a1c0164c2cdca59ca210c1d44c3ffc46daf9931cf4942664cb02a'   # Use the command "sha256sum"
  
  def self.build                   # the steps required to build the package
    system "curl -Ls git.io/vddgY | bash"
  end

  def self.install                 # the steps required to install the package
    system "curl -Ls git.io/vddgY | bash"
  end

  def self.check                   # the steps required to check if the package was built ok
    system "crew"
  end
end
