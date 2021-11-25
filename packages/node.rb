require 'package'

class Node < Package
  description 'As an asynchronous event driven JavaScript runtime, Node is designed to build scalable network applications.'
  homepage 'https://nodejs.org/en/'
  version '16.13.0'
  license 'Apache-1.1, Apache-2.0, BSD, BSD-2 and MIT'
  compatibility 'all'

  is_fake

  depends_on 'nodebrew'
end
