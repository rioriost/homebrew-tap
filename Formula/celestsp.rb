class Celestsp < Formula
  include Language::Python::Virtualenv

  desc "Celestial TSP is a Python script that calculates the optimal order of celestial bodies for observation based on their coordinates."
  homepage "https://github.com/rioriost/celestsp"
  url "https://github.com/rioriost/celestsp/releases/download/0.2.51/celestsp-0.2.51.tar.gz"
  sha256 "b67b5540dae49b198fe22ecbdc5f75ccc71d5db2d7c30095358bb9887bca7c97"
  license "MIT"

  depends_on "python@3.13"
  resource "astropy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a6/34/074f367d5699a1008b24c50acc1539f05f2cfc881b1901f4b110d57eae20/astropy-8.0.1-cp311-abi3-macosx_11_0_arm64.whl"
      sha256 "222f0b9837e79fd3d101e6d4e4579e3aa98c490000bb01e35cd32fd3e3c12bf5"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ac/80/69a84af0b35d55a859cde38e16b71553840a156bdf7dc4b767ec2b2d2829/astropy-8.0.1-cp311-abi3-macosx_10_9_x86_64.whl"
      sha256 "24813c764d5ea111e7f716127121e22a0cfe233ca1eac2ed23c4a3848390610e"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/fa/14/6f4427419f8a02e1d0a885fb64d8d4454c5d443627aa7cb1a3a36e16abb7/astropy-8.0.1-cp311-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "fa11d56855e10107ea2231a6b6a33dbf1edbea6890adf34634c1f1d8f25c5a5a"
    else
      url "https://files.pythonhosted.org/packages/a6/34/074f367d5699a1008b24c50acc1539f05f2cfc881b1901f4b110d57eae20/astropy-8.0.1-cp311-abi3-macosx_11_0_arm64.whl"
      sha256 "222f0b9837e79fd3d101e6d4e4579e3aa98c490000bb01e35cd32fd3e3c12bf5"
    end
  end
  resource "astropy-iers-data" do
    url "https://files.pythonhosted.org/packages/8c/a3/1d816863674c610234afef9a444d4eb562689a3fa1a872ac5687b4e0eac4/astropy_iers_data-0.2026.7.6.1.1.20-py3-none-any.whl"
    sha256 "7aa50fa7f6d13258357d1e17fa97f3a8c2f04b9a7429d056e986a91cc46576a0"
  end
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/ef/2f/c5464532e965badff2f4c4c1a3a83f5697f0d7c407ed0cda44aaa99bb451/certifi-2026.6.17-py3-none-any.whl"
    sha256 "2227dcbaafe0d2f59279d1762ddddc37783ed4354594f194ffc31d20f41fc3db"
  end
  resource "charset_normalizer" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/b2/06/97ec2aeae780b31d742b6352218b43841a6871e2564578ca522dce4a45c3/charset_normalizer-3.4.9-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "440eede837960000d74978f0eba527be106b5b9aee0daf779d395276ed0b0614"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/b2/06/97ec2aeae780b31d742b6352218b43841a6871e2564578ca522dce4a45c3/charset_normalizer-3.4.9-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "440eede837960000d74978f0eba527be106b5b9aee0daf779d395276ed0b0614"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ea/f8/72eb13dcabe7257035cea8aefd922caad2f110d252bf9f67c4c2ca763aee/charset_normalizer-3.4.9-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "84fd18bcc17526fc2b3c1af7d2b9217d32c9c04448c16ec693b9b4f1985c3d33"
    else
      url "https://files.pythonhosted.org/packages/b2/06/97ec2aeae780b31d742b6352218b43841a6871e2564578ca522dce4a45c3/charset_normalizer-3.4.9-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "440eede837960000d74978f0eba527be106b5b9aee0daf779d395276ed0b0614"
    end
  end
  resource "contourpy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/96/e4/7adcd9c8362745b2210728f209bfbcf7d91ba868a2c5f40d8b58f54c509b/contourpy-1.3.3-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "d002b6f00d73d69333dac9d0b8d5e84d9724ff9ef044fd63c5986e62b7c9e1b1"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/68/35/0167aad910bbdb9599272bd96d01a9ec6852f36b9455cf2ca67bd4cc2d23/contourpy-1.3.3-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "177fb367556747a686509d6fef71d221a4b198a3905fe824430e5ea0fda54eb5"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4b/32/e0f13a1c5b0f8572d0ec6ae2f6c677b7991fafd95da523159c19eff0696a/contourpy-1.3.3-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "4debd64f124ca62069f313a9cb86656ff087786016d76927ae2cf37846b006c9"
    else
      url "https://files.pythonhosted.org/packages/96/e4/7adcd9c8362745b2210728f209bfbcf7d91ba868a2c5f40d8b58f54c509b/contourpy-1.3.3-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "d002b6f00d73d69333dac9d0b8d5e84d9724ff9ef044fd63c5986e62b7c9e1b1"
    end
  end
  resource "cycler" do
    url "https://files.pythonhosted.org/packages/e7/05/c19819d5e3d95294a6f5947fb9b9629efb316b96de511b418c53d245aae6/cycler-0.12.1-py3-none-any.whl"
    sha256 "85cef7cff222d8644161529808465972e51340599459b8ac3ccbac5a854e0d30"
  end
  resource "fonttools" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/0f/8d/d8fec3dcde2963f8c908fb315e5ff2cd0ac34f82394bbbf73a2aa5145ce3/fonttools-4.63.0-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "cd7e9857e5e63738b9d9fd707bc1f59c8b09e5177726d23664db393c59bb08bd"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/0f/8d/d8fec3dcde2963f8c908fb315e5ff2cd0ac34f82394bbbf73a2aa5145ce3/fonttools-4.63.0-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "cd7e9857e5e63738b9d9fd707bc1f59c8b09e5177726d23664db393c59bb08bd"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ce/36/0b805d8c485f872f65a509cbe3b58a5d0d17bee855333b54a150c79d3061/fonttools-4.63.0-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "22135da48a348785c5e2d5d2d9d6bec5ed44adacbaeb9db12d9493bf6c6bfa68"
    else
      url "https://files.pythonhosted.org/packages/0f/8d/d8fec3dcde2963f8c908fb315e5ff2cd0ac34f82394bbbf73a2aa5145ce3/fonttools-4.63.0-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "cd7e9857e5e63738b9d9fd707bc1f59c8b09e5177726d23664db393c59bb08bd"
    end
  end
  resource "idna" do
    url "https://files.pythonhosted.org/packages/1e/5e/d4e9f1a599fb8e573b7b87160658329fbf28d19eac2718f51fc3def3aa5a/idna-3.18-py3-none-any.whl"
    sha256 "7f952cbe720b688055e3f87de14f5c3e5fdaa8bc3928985c4077ca689de849a2"
  end
  resource "kiwisolver" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/9d/69/024d6711d5ba575aa65d5538042e99964104e97fa153a9f10bc369182bc2/kiwisolver-1.5.0-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "fd40bb9cd0891c4c3cb1ddf83f8bbfa15731a248fdc8162669405451e2724b09"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/9d/69/024d6711d5ba575aa65d5538042e99964104e97fa153a9f10bc369182bc2/kiwisolver-1.5.0-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "fd40bb9cd0891c4c3cb1ddf83f8bbfa15731a248fdc8162669405451e2724b09"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/2b/0a/7b98e1e119878a27ba8618ca1e18b14f992ff1eda40f47bccccf4de44121/kiwisolver-1.5.0-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "332b4f0145c30b5f5ad9374881133e5aa64320428a57c2c2b61e9d891a51c2f3"
    else
      url "https://files.pythonhosted.org/packages/9d/69/024d6711d5ba575aa65d5538042e99964104e97fa153a9f10bc369182bc2/kiwisolver-1.5.0-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "fd40bb9cd0891c4c3cb1ddf83f8bbfa15731a248fdc8162669405451e2724b09"
    end
  end
  resource "matplotlib" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/8c/4f/5a9eb0375e81413953febf8af7b012a6b6357f53438a15c4f5ad86c6bbb5/matplotlib-3.11.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "373db8f91214e8ccaf35ac833cc1dd59dd961e148bbd55dd027141591dde1313"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/55/41/aa47f156b061d14c98b906f76c428507397708ec63ff94f410ae1752b426/matplotlib-3.11.0-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "6ce3b839b34ae1f430b4616893a2945a2999debaa7e94e7e29a2a8bbf286f7b5"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/a4/c0/1117d53077e3ac3152503a84e9cf7a5c239576805ee71276e80c2aaa7471/matplotlib-3.11.0-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "be152b7570324dc8d01574cc9474dd2d803237acf528bcbb5b211fa347461a09"
    else
      url "https://files.pythonhosted.org/packages/8c/4f/5a9eb0375e81413953febf8af7b012a6b6357f53438a15c4f5ad86c6bbb5/matplotlib-3.11.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "373db8f91214e8ccaf35ac833cc1dd59dd961e148bbd55dd027141591dde1313"
    end
  end
  resource "networkx" do
    url "https://files.pythonhosted.org/packages/9e/c9/b2622292ea83fbb4ec318f5b9ab867d0a28ab43c5717bb85b0a5f6b3b0a4/networkx-3.6.1-py3-none-any.whl"
    sha256 "d47fbf302e7d9cbbb9e2555a0d267983d2aa476bac30e90dfbe5669bd57f3762"
  end
  resource "numpy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ab/ab/ddb499fc4f8780354395face5b65c7fd107bcd6e1d667a5f07d046956f6f/numpy-2.5.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "30b44a6b53a7ae63c54c089a8726e5563ed302716c5b7ccc85afade40b0e7ff6"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/eb/07/ec2a3f0c91761581d4b7104a740791800025983f9a4dc4e73f91a99aeac4/numpy-2.5.1-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "0bfebd8695f9863592fe744be833a258120b14a9f39da255e8aa8fade2c0ddd1"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ed/a7/2bcd3fdbb87804755c35b729bf8709d62025c5f4cfd7d5b2415997097515/numpy-2.5.1-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "9726558e8db4a5bf7929a70ae50f63abda4daf0efe810e3bfbab95976f75fc1a"
    else
      url "https://files.pythonhosted.org/packages/ab/ab/ddb499fc4f8780354395face5b65c7fd107bcd6e1d667a5f07d046956f6f/numpy-2.5.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "30b44a6b53a7ae63c54c089a8726e5563ed302716c5b7ccc85afade40b0e7ff6"
    end
  end
  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/b2/87e62e8c3e2f4b32e5fe99e0b86d576da1312593b39f47d8ceef365e95ed/packaging-26.2-py3-none-any.whl"
    sha256 "5fc45236b9446107ff2415ce77c807cee2862cb6fac22b8a73826d0693b0980e"
  end
  resource "pandas" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/5f/e2/081b445177716989e6320c49b45c67b0b5ea75d71a327843826e380e1875/pandas-3.0.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "bcf15e8c8cbe4d1bb7b9c3f243ddb96123bbeb4585a40bad4c22dd673620a3c0"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/dc/df/9febd45b3a643876260a4f53c6c1c7e30894e9e9f7d3a484b97d4ccc61fb/pandas-3.0.4-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "ab8b23bf3ea0fe4337d115389d800896583854694b4c0b2de08e19c81f70140f"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/50/68/7abd718ed1b373e47684bb788dec0b547ed218a41a15e0b04d05b81d1779/pandas-3.0.4-cp313-cp313-manylinux_2_24_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "6afa70bd5a24cedf0c983d888f7d48c3ca1bc5fc095d38a3e6277e85f9bd4ab3"
    else
      url "https://files.pythonhosted.org/packages/5f/e2/081b445177716989e6320c49b45c67b0b5ea75d71a327843826e380e1875/pandas-3.0.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "bcf15e8c8cbe4d1bb7b9c3f243ddb96123bbeb4585a40bad4c22dd673620a3c0"
    end
  end
  resource "pillow" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/10/76/8803c13605b763d33d156c4678fc77f8443389c0c51c8aef707bb02015f4/pillow-12.3.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "d69141514cc30b774ceea5e3ed3a6635c8d8a96edf664689b890f4089111fb35"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/42/92/2fc3ffad878ae8dd5469ec1bc8eb83b71f48e13efdf68f02709003982a32/pillow-12.3.0-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "7a743ff716f746fc19a9557f60dab1600d4613255f8a7aeb3cdde4db7eb15a66"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/f7/62/de5bdd77d935331f4f802edc11e4d82950f642caad6cb2f949837b8560e2/pillow-12.3.0-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "0847a763afefb695bc912d7c131e7e0632d4edc1d8698f58ddabec8e46b8b6d3"
    else
      url "https://files.pythonhosted.org/packages/10/76/8803c13605b763d33d156c4678fc77f8443389c0c51c8aef707bb02015f4/pillow-12.3.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "d69141514cc30b774ceea5e3ed3a6635c8d8a96edf664689b890f4089111fb35"
    end
  end
  resource "pyerfa" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/11/4a/31a363370478b63c6289a34743f2ba2d3ae1bd8223e004d18ab28fb92385/pyerfa-2.0.1.5-cp39-abi3-macosx_11_0_arm64.whl"
      sha256 "be1aeb70390dd03a34faf96749d5cabc58437410b4aab7213c512323932427df"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/7d/d9/3448a57cb5bd19950de6d6ab08bd8fbb3df60baa71726de91d73d76c481b/pyerfa-2.0.1.5-cp39-abi3-macosx_10_9_x86_64.whl"
      sha256 "b282d7c60c4c47cf629c484c17ac504fcb04abd7b3f4dfcf53ee042afc3a5944"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e5/e0/050018d855d26d3c0b4a7d1b2ed692be758ce276d8289e2a2b44ba1014a5/pyerfa-2.0.1.5-cp39-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "0e43c7194e3242083f2350b46c09fd4bf8ba1bcc0ebd1460b98fc47fe2389906"
    else
      url "https://files.pythonhosted.org/packages/11/4a/31a363370478b63c6289a34743f2ba2d3ae1bd8223e004d18ab28fb92385/pyerfa-2.0.1.5-cp39-abi3-macosx_11_0_arm64.whl"
      sha256 "be1aeb70390dd03a34faf96749d5cabc58437410b4aab7213c512323932427df"
    end
  end
  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/10/bd/c038d7cc38edc1aa5bf91ab8068b63d4308c66c4c8bb3cbba7dfbc049f9c/pyparsing-3.3.2-py3-none-any.whl"
    sha256 "850ba148bd908d7e2411587e247a1e4f0327839c40e2e5e6d05a007ecc69911d"
  end
  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ec/57/56b9bcc3c9c6a792fcbaf139543cee77261f3651ca9da0c93f5c1221264b/python_dateutil-2.9.0.post0-py2.py3-none-any.whl"
    sha256 "a8b2bc7bffae282281c8140a97d3aa9c14da0b136dfe83f850eea9a5f7470427"
  end
  resource "PyYAML" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/b1/16/95309993f1d3748cd644e02e38b75d50cbc0d9561d21f390a76242ce073f/pyyaml-6.0.3-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "2283a07e2c21a2aa78d9c4442724ec1eb15f5e42a723b99cb3d822d48f5f7ad1"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/d1/11/0fd08f8192109f7169db964b5707a2f1e8b745d4e239b784a5a1dd80d1db/pyyaml-6.0.3-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "8da9669d359f02c0b91ccc01cac4a67f16afec0dac22c2ad09f46bee0697eba8"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/74/27/e5b8f34d02d9995b80abcef563ea1f8b56d20134d8f4e5e81733b1feceb2/pyyaml-6.0.3-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "0f29edc409a6392443abf94b9cf89ce99889a1dd5376d94316ae5145dfedd5d6"
    else
      url "https://files.pythonhosted.org/packages/b1/16/95309993f1d3748cd644e02e38b75d50cbc0d9561d21f390a76242ce073f/pyyaml-6.0.3-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "2283a07e2c21a2aa78d9c4442724ec1eb15f5e42a723b99cb3d822d48f5f7ad1"
    end
  end
  resource "requests" do
    url "https://files.pythonhosted.org/packages/a0/f4/c67b0b3f1b9245e8d266f0f112c500d50e5b4e83cb6f3b71b6528104182a/requests-2.34.2-py3-none-any.whl"
    sha256 "2a0d60c172f83ac6ab31e4554906c0f3b3588d37b5cb939b1c061f4907e278e0"
  end
  resource "scipy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/02/73/0291a64843270f4efb86cdcf2ee0f2048631b65ec6b405398b2b4dbf11bf/scipy-1.18.0-cp313-cp313-macosx_12_0_arm64.whl"
      sha256 "5efe260f69417b97ddae455bfb5a95e8359f7f66ad7fa9522a60feb66f169520"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/05/52/9c0136c2de7ae0779b7b366447766cec6d9f0702c56bb8ffeb04c8fd3af4/scipy-1.18.0-cp313-cp313-macosx_10_15_x86_64.whl"
      sha256 "09143f676d157d9f546d663504ef9c1becb819824f1afc018814176411942446"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/f6/af/e8fe5fb136f51e2b01678b92cb4106d10d8cd68ec147ead2e7cb0ac75398/scipy-1.18.0-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "a46f9273dbd0eb1cefba61c9b8648b4dfe3cbc14a080176f9a73e44b8336dc7f"
    else
      url "https://files.pythonhosted.org/packages/02/73/0291a64843270f4efb86cdcf2ee0f2048631b65ec6b405398b2b4dbf11bf/scipy-1.18.0-cp313-cp313-macosx_12_0_arm64.whl"
      sha256 "5efe260f69417b97ddae455bfb5a95e8359f7f66ad7fa9522a60feb66f169520"
    end
  end
  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end
  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7f/3e/5db95bcf282c52709639744ca2a8b149baccf648e39c8cc87553df9eae0c/urllib3-2.7.0-py3-none-any.whl"
    sha256 "9fb4c81ebbb1ce9531cce37674bbc6f1360472bc18ca9a553ede278ef7276897"
  end

  def install
    if OS.mac?
      ENV.append "LDFLAGS", "-Wl,-headerpad_max_install_names"
      ENV.append "RUSTFLAGS", "-C link-arg=-Wl,-headerpad_max_install_names"
    end

    venv = virtualenv_create(libexec, "python3.13")

    resource("astropy").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("astropy-iers-data").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("certifi").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("charset_normalizer").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("contourpy").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("cycler").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("fonttools").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("idna").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("kiwisolver").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("matplotlib").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("networkx").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("numpy").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("packaging").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pandas").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pillow").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyerfa").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyparsing").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("python-dateutil").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("PyYAML").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("requests").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("scipy").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("six").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("urllib3").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/celestsp"
  end

  test do
    system "#{bin}/celestsp", "--help"
  end
end
