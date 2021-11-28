require 'package'

class Cliadd < Package                 # The first character of the class name must be upper case
  description 'cliadd is a command-line additon program written in C by Zach, Inc.'
  version '1.0.0'
  license 'GPL-3' # license of source
  compatibility 'all'
  source_url 'https://download-task-manager.zacharyrude.repl.co/cliadd/cliadd-1.0.0.tar.gz'
  source_sha256 '62adfca89b0a1c0164c2cdca59ca210c1d44c3ffc46daf9931cf4942664cb02a'   # Use the command "sha256sum"

  def self.build 
  end

  def self.install                 # the steps required to install the package
    
  end

  def self.check                   # the steps required to check if the package was built ok
    system "cliadd"
  end
end

