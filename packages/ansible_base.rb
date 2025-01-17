require 'package'

class Ansible_base < Package
  description 'Ansible base libraries and functions.'
  homepage 'https://www.ansible.com/'
  version '2.10.9'
  license 'GPL-3'
  compatibility 'all'
  source_url 'https://files.pythonhosted.org/packages/2f/7c/36119f0695fe48fd5eeb33a78c11137642abf1f67b477f31b9772da5a85d/ansible-base-2.10.9.tar.gz'
  source_sha256 '04635d3e08fc29358c76b8e7f1e9db0ce443fb09ce30b2acc6cacaad165f2151'

  binary_url({
    aarch64: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/ansible_base/2.10.9_armv7l/ansible_base-2.10.9-chromeos-armv7l.tpxz',
     armv7l: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/ansible_base/2.10.9_armv7l/ansible_base-2.10.9-chromeos-armv7l.tpxz',
       i686: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/ansible_base/2.10.9_i686/ansible_base-2.10.9-chromeos-i686.tpxz',
     x86_64: 'https://gitlab.com/api/v4/projects/26210301/packages/generic/ansible_base/2.10.9_x86_64/ansible_base-2.10.9-chromeos-x86_64.tpxz'
  })
  binary_sha256({
    aarch64: 'a674696b14784221da3aa76d74e580037e40cf707e91d59c5a9028a68beaa6c0',
     armv7l: 'a674696b14784221da3aa76d74e580037e40cf707e91d59c5a9028a68beaa6c0',
       i686: '3b121d5d5948388eec588ad8d78eb9226a61c21f64ce304401109e1dd0601ad1',
     x86_64: '28d811d9b8d912f23f911fa46ed7e43758f1f54083486156e075a949a09dd03f'
  })

  depends_on 'xdg_base'
  depends_on 'py3_cryptography'
  depends_on 'py3_pyyaml'
  depends_on 'py3_packaging'
  depends_on 'py3_jinja2'
  depends_on 'py3_setuptools' => :build

  def self.build
    system "python3 setup.py build #{PY3_SETUP_BUILD_OPTIONS}"
  end

  def self.install
    system "python3 setup.py install #{PY_SETUP_INSTALL_OPTIONS}"
  end
end
