class Celestsp < Formula
  include Language::Python::Virtualenv

  desc "Celestial TSP is a Python script that calculates the optimal order of celestial bodies for observation based on their coordinates."
  homepage "https://github.com/rioriost/celestsp"
  url "https://github.com/rioriost/celestsp/releases/download/0.2.49/celestsp-0.2.49.tar.gz"
  sha256 "b166091e99403ab8bc0465d08c62bad97d0884d66aa157d89760e9c00836ba86"
  license "MIT"

  depends_on "python@3.13"
  resource "astropy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a6/ba/3418133ba144dfcd1530bca5a6b695f4cdd21a8abaaa2ac4e5450d11b028/astropy-7.2.0-cp311-abi3-macosx_11_0_arm64.whl"
      sha256 "52e9a7d9c86b21f1af911a2930cd0c4a275fb302d455c89e11eedaffef6f2ad0"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/b4/6d/6330a844bad8dfc4875e0f2fa1db1fee87837ba9805aa8a8d048c071363a/astropy-7.2.0-cp311-abi3-macosx_10_9_x86_64.whl"
      sha256 "efac04df4cc488efe630c2fff1992d6516dfb16a06e197fb68bc9e8e3b85def1"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c3/1c/f06ad85180e7dd9855aa5ede901bfc2be858d7bee17d4e978a14c0ecec14/astropy-7.2.0-cp311-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "2f39ce2c80211fbceb005d377a5478cd0d66c42aa1498d252f2239fe5a025c24"
    else
      url "https://files.pythonhosted.org/packages/a6/ba/3418133ba144dfcd1530bca5a6b695f4cdd21a8abaaa2ac4e5450d11b028/astropy-7.2.0-cp311-abi3-macosx_11_0_arm64.whl"
      sha256 "52e9a7d9c86b21f1af911a2930cd0c4a275fb302d455c89e11eedaffef6f2ad0"
    end
  end
  resource "astropy-iers-data" do
    url "https://files.pythonhosted.org/packages/25/14/1c50311a2873e8c89f0b1d0eda65cf572b360917b14b70ba9d0678fc6acc/astropy_iers_data-0.2026.4.27.1.3.2-py3-none-any.whl"
    sha256 "3c09006b1b7c369a4dd9ba7e395b04cbfedb41a9253013b3bf7e5b8ac53a7699"
  end
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/22/30/7cd8fdcdfbc5b869528b079bfb76dcdf6056b1a2097a662e5e8c04f42965/certifi-2026.4.22-py3-none-any.whl"
    sha256 "3cb2210c8f88ba2318d29b0388d1023c8492ff72ecdde4ebdaddbb13a31b1c4a"
  end
  resource "charset_normalizer" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c1/3b/66777e39d3ae1ddc77ee606be4ec6d8cbd4c801f65e5a1b6f2b11b8346dd/charset_normalizer-3.4.7-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "f496c9c3cc02230093d8330875c4c3cdfc3b73612a5fd921c65d39cbcef08063"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c1/3b/66777e39d3ae1ddc77ee606be4ec6d8cbd4c801f65e5a1b6f2b11b8346dd/charset_normalizer-3.4.7-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "f496c9c3cc02230093d8330875c4c3cdfc3b73612a5fd921c65d39cbcef08063"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/fa/07/330e3a0dda4c404d6da83b327270906e9654a24f6c546dc886a0eb0ffb23/charset_normalizer-3.4.7-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "e044c39e41b92c845bc815e5ae4230804e8e7bc29e399b0437d64222d92809dd"
    else
      url "https://files.pythonhosted.org/packages/c1/3b/66777e39d3ae1ddc77ee606be4ec6d8cbd4c801f65e5a1b6f2b11b8346dd/charset_normalizer-3.4.7-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "f496c9c3cc02230093d8330875c4c3cdfc3b73612a5fd921c65d39cbcef08063"
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
      url "https://files.pythonhosted.org/packages/3b/56/6f389de21c49555553d6a5aeed5ac9767631497ac836c4f076273d15bd72/fonttools-4.62.1-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "c22b1014017111c401469e3acc5433e6acf6ebcc6aa9efb538a533c800971c79"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/3b/56/6f389de21c49555553d6a5aeed5ac9767631497ac836c4f076273d15bd72/fonttools-4.62.1-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "c22b1014017111c401469e3acc5433e6acf6ebcc6aa9efb538a533c800971c79"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e2/98/8b1e801939839d405f1f122e7d175cebe9aeb4e114f95bfc45e3152af9a7/fonttools-4.62.1-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "6706d1cb1d5e6251a97ad3c1b9347505c5615c112e66047abbef0f8545fa30d1"
    else
      url "https://files.pythonhosted.org/packages/3b/56/6f389de21c49555553d6a5aeed5ac9767631497ac836c4f076273d15bd72/fonttools-4.62.1-cp313-cp313-macosx_10_13_universal2.whl"
      sha256 "c22b1014017111c401469e3acc5433e6acf6ebcc6aa9efb538a533c800971c79"
    end
  end
  resource "idna" do
    url "https://files.pythonhosted.org/packages/5d/13/ad7d7ca3808a898b4612b6fe93cde56b53f3034dcde235acb1f0e1df24c6/idna-3.13-py3-none-any.whl"
    sha256 "892ea0cde124a99ce773decba204c5552b69c3c67ffd5f232eb7696135bc8bb3"
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
      url "https://files.pythonhosted.org/packages/63/d9/9e14bc7564bf92d5ffa801ae5fac819ce74b925dfb55e3ebde61a3bbad3e/matplotlib-3.10.9-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "b1b745c489cd1a77a0dc1120a05dc87af9798faebc913601feb8c73d89bf2d1e"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/aa/d3/8d4f6afbecb49fc04e060a57c0fce39ea51cc163a6bd87303ccd698e4fa6/matplotlib-3.10.9-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "b580440f1ff81a0e34122051a3dfabb7e4b7f9e380629929bde0eff9af72165f"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/8a/17/4402d0d14ccf1dfc70932600b68097fbbf9c898a4871d2cbbe79c7801a32/matplotlib-3.10.9-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "8f3bcac1ca5ed000a6f4337d47ba67dfddf37ed6a46c15fd7f014997f7bf865f"
    else
      url "https://files.pythonhosted.org/packages/63/d9/9e14bc7564bf92d5ffa801ae5fac819ce74b925dfb55e3ebde61a3bbad3e/matplotlib-3.10.9-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "b1b745c489cd1a77a0dc1120a05dc87af9798faebc913601feb8c73d89bf2d1e"
    end
  end
  resource "networkx" do
    url "https://files.pythonhosted.org/packages/9e/c9/b2622292ea83fbb4ec318f5b9ab867d0a28ab43c5717bb85b0a5f6b3b0a4/networkx-3.6.1-py3-none-any.whl"
    sha256 "d47fbf302e7d9cbbb9e2555a0d267983d2aa476bac30e90dfbe5669bd57f3762"
  end
  resource "numpy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c1/62/2b7a48fbb745d344742c0277f01286dead15f3f68e4f359fbfcf7b48f70f/numpy-2.4.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "e823b8b6edc81e747526f70f71a9c0a07ac4e7ad13020aa736bb7c9d67196115"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/14/1d/d0a583ce4fefcc3308806a749a536c201ed6b5ad6e1322e227ee4848979d/numpy-2.4.4-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "08f2e31ed5e6f04b118e49821397f12767934cfdd12a1ce86a058f91e004ee50"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/d1/73/a9d864e42a01896bb5974475438f16086be9ba1f0d19d0bb7a07427c4a8b/numpy-2.4.4-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "c901b15172510173f5cb310eae652908340f8dede90fff9e3bf6c0d8dfd92f83"
    else
      url "https://files.pythonhosted.org/packages/c1/62/2b7a48fbb745d344742c0277f01286dead15f3f68e4f359fbfcf7b48f70f/numpy-2.4.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "e823b8b6edc81e747526f70f71a9c0a07ac4e7ad13020aa736bb7c9d67196115"
    end
  end
  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/b2/87e62e8c3e2f4b32e5fe99e0b86d576da1312593b39f47d8ceef365e95ed/packaging-26.2-py3-none-any.whl"
    sha256 "5fc45236b9446107ff2415ce77c807cee2862cb6fac22b8a73826d0693b0980e"
  end
  resource "pandas" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/0b/77/dbc82ff2fb0e63c6564356682bf201edff0ba16c98630d21a1fb312a8182/pandas-3.0.2-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "d606a041c89c0a474a4702d532ab7e73a14fe35c8d427b972a625c8e46373668"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/bf/ca/3e639a1ea6fcd0617ca4e8ca45f62a74de33a56ae6cd552735470b22c8d3/pandas-3.0.2-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "b5918ba197c951dec132b0c5929a00c0bf05d5942f590d3c10a807f6e15a57d3"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/12/c5/cbb1ffefb20a93d3f0e1fdcda699fb84976210d411b008f97f48bf6ce27e/pandas-3.0.2-cp313-cp313-manylinux_2_24_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "5d3cfe227c725b1f3dff4278b43d8c784656a42a9325b63af6b1492a8232209e"
    else
      url "https://files.pythonhosted.org/packages/0b/77/dbc82ff2fb0e63c6564356682bf201edff0ba16c98630d21a1fb312a8182/pandas-3.0.2-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "d606a041c89c0a474a4702d532ab7e73a14fe35c8d427b972a625c8e46373668"
    end
  end
  resource "pillow" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/71/43/905a14a8b17fdb1ccb58d282454490662d2cb89a6bfec26af6d3520da5ec/pillow-12.2.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "56b25336f502b6ed02e889f4ece894a72612fe885889a6e8c4c80239ff6e5f5f"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/34/46/6c717baadcd62bc8ed51d238d521ab651eaa74838291bda1f86fe1f864c9/pillow-12.2.0-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "5d2fd0fa6b5d9d1de415060363433f28da8b1526c1c129020435e186794b3795"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/a8/68/b93e09e5e8549019e61acf49f65b1a8530765a7f812c77a7461bca7e4494/pillow-12.2.0-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "03f6fab9219220f041c74aeaa2939ff0062bd5c364ba9ce037197f4c6d498cd9"
    else
      url "https://files.pythonhosted.org/packages/71/43/905a14a8b17fdb1ccb58d282454490662d2cb89a6bfec26af6d3520da5ec/pillow-12.2.0-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "56b25336f502b6ed02e889f4ece894a72612fe885889a6e8c4c80239ff6e5f5f"
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
    url "https://files.pythonhosted.org/packages/d7/8e/7540e8a2036f79a125c1d2ebadf69ed7901608859186c856fa0388ef4197/requests-2.33.1-py3-none-any.whl"
    sha256 "4e6d1ef462f3626a1f0a0a9c42dd93c63bad33f9f1c1937509b8c5c8718ab56a"
  end
  resource "scipy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ec/ae/db19f8ab842e9b724bf5dbb7db29302a91f1e55bc4d04b1025d6d605a2c5/scipy-1.17.1-cp313-cp313-macosx_12_0_arm64.whl"
      sha256 "6fac755ca3d2c3edcb22f479fceaa241704111414831ddd3bc6056e18516892f"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/76/27/07ee1b57b65e92645f219b37148a7e7928b82e2b5dbeccecb4dff7c64f0b/scipy-1.17.1-cp313-cp313-macosx_10_14_x86_64.whl"
      sha256 "5e3c5c011904115f88a39308379c17f91546f77c1667cea98739fe0fccea804c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/f5/5f/f17563f28ff03c7b6799c50d01d5d856a1d55f2676f537ca8d28c7f627cd/scipy-1.17.1-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "581b2264fc0aa555f3f435a5944da7504ea3a065d7029ad60e7c3d1ae09c5464"
    else
      url "https://files.pythonhosted.org/packages/ec/ae/db19f8ab842e9b724bf5dbb7db29302a91f1e55bc4d04b1025d6d605a2c5/scipy-1.17.1-cp313-cp313-macosx_12_0_arm64.whl"
      sha256 "6fac755ca3d2c3edcb22f479fceaa241704111414831ddd3bc6056e18516892f"
    end
  end
  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end
  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/39/08/aaaad47bc4e9dc8c725e68f9d04865dbcb2052843ff09c97b08904852d84/urllib3-2.6.3-py3-none-any.whl"
    sha256 "bf272323e553dfb2e87d9bfd225ca7b0f467b919d7bbd355436d3fd37cb0acd4"
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
