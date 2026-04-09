class Ggai < Formula
  include Language::Python::Virtualenv

  desc "Helper for GeoGuessr training using OpenAI"
  homepage "https://github.com/rioriost/ggai"
  url "https://github.com/rioriost/ggai/releases/download/0.5.9/ggai-0.5.9.tar.gz"
  sha256 "6f6983052034cb63571d5c2e99530bb67c209a5b3a0c251ece6b88f0bb1799be"
  license "MIT"

  depends_on "python@3.14"
  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end
  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/42/e921fccf5015463e32a3cf6ee7f980a6ed0f395ceeaa45060b61d86486c2/anyio-4.13.0-py3-none-any.whl"
    sha256 "08b310f9e24a9594186fd75b4f73f4a4152069e3853f1ed8bfbf58369f4ad708"
  end
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9a/3c/c17fb3ca2d9c3acff52e30b309f538586f9f5b9c9cf454f3845fc9af4881/certifi-2026.2.25-py3-none-any.whl"
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
  end
  resource "distro" do
    url "https://files.pythonhosted.org/packages/12/b3/231ffd4ab1fc9d679809f356cebee130ac7daa00d6d6f3206dd4fd137e9e/distro-1.9.0-py3-none-any.whl"
    sha256 "7bffd925d65168f85027d8da9af6bddab658135b840670a223589bc0c8ef02b2"
  end
  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end
  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end
  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end
  resource "idna" do
    url "https://files.pythonhosted.org/packages/0e/61/66938bbb5fc52dbdf84594873d5b51fb1f7c7794e9c0f5bd885f30bc507b/idna-3.11-py3-none-any.whl"
    sha256 "771a87f49d9defaf64091e6e6fe9c18d4833f140bd19464795bc32d966ca37ea"
  end
  resource "jiter" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/cd/8f/5482a7677731fd44881f0204981ce2d7175db271f82cba2085dd2212e095/jiter-0.13.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "9776ebe51713acf438fd9b4405fcd86893ae5d03487546dae7f34993217f8a91"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/6e/f5/f1997e987211f6f9bd71b8083047b316208b4aca0b529bb5f8c96c89ef3e/jiter-0.13.0-cp314-cp314-macosx_10_12_x86_64.whl"
      sha256 "cc5223ab19fe25e2f0bf2643204ad7318896fe3729bf12fde41b77bfc4fafff0"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4e/c1/e4693f107a1789a239c759a432e9afc592366f04e901470c2af89cfd28e1/jiter-0.13.0-cp314-cp314-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "0c365005b05505a90d1c47856420980d0237adf82f70c4aff7aebd3c1cc143ad"
    else
      url "https://files.pythonhosted.org/packages/cd/8f/5482a7677731fd44881f0204981ce2d7175db271f82cba2085dd2212e095/jiter-0.13.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "9776ebe51713acf438fd9b4405fcd86893ae5d03487546dae7f34993217f8a91"
    end
  end
  resource "openai" do
    url "https://files.pythonhosted.org/packages/66/bc/a8f7c3aa03452fedbb9af8be83e959adba96a6b4a35e416faffcc959c568/openai-2.31.0-py3-none-any.whl"
    sha256 "44e1344d87e56a493d649b17e2fac519d1368cbb0745f59f1957c4c26de50a0a"
  end
  resource "pillow" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ba/8c/1a9e46228571de18f8e28f16fabdfc20212a5d019f3e3303452b3f0a580d/pillow-12.2.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "80b2da48193b2f33ed0c32c38140f9d3186583ce7d516526d462645fd98660ae"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/71/e0/fb22f797187d0be2270f83500aab851536101b254bfa1eae10795709d283/pillow-12.2.0-cp314-cp314-macosx_10_15_x86_64.whl"
      sha256 "2bb4a8d594eacdfc59d9e5ad972aa8afdd48d584ffd5f13a937a664c3e7db0ed"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/5e/03/688747d2e91cfbe0e64f316cd2e8005698f76ada3130d0194664174fa5de/pillow-12.2.0-cp314-cp314-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "7b14cc0106cd9aecda615dd6903840a058b4700fcb817687d0ee4fc8b6e389be"
    else
      url "https://files.pythonhosted.org/packages/ba/8c/1a9e46228571de18f8e28f16fabdfc20212a5d019f3e3303452b3f0a580d/pillow-12.2.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "80b2da48193b2f33ed0c32c38140f9d3186583ce7d516526d462645fd98660ae"
    end
  end
  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/5a/87/b70ad306ebb6f9b585f114d0ac2137d792b48be34d732d60e597c2f8465a/pydantic-2.12.5-py3-none-any.whl"
    sha256 "e561593fccf61e8a20fc46dfc2dfe075b8be7d0188df33f221ad1f0139180f9d"
  end
  resource "pydantic-core" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/74/1a/145646e5687e8d9a1e8d09acb278c8535ebe9e972e1f162ed338a622f193/pydantic_core-2.41.5-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "1d1d9764366c73f996edd17abb6d9d7649a7eb690006ab6adbda117717099b14"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ea/28/46b7c5c9635ae96ea0fbb779e271a38129df2550f763937659ee6c5dbc65/pydantic_core-2.41.5-cp314-cp314-macosx_10_12_x86_64.whl"
      sha256 "3f37a19d7ebcdd20b96485056ba9e8b304e27d9904d233d7b1015db320e51f0a"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4c/d2/ef2074dc020dd6e109611a8be4449b98cd25e1b9b8a303c2f0fca2f2bcf7/pydantic_core-2.41.5-cp314-cp314-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "22f0fb8c1c583a3b6f24df2470833b40207e907b90c928cc8d3594b76f874375"
    else
      url "https://files.pythonhosted.org/packages/74/1a/145646e5687e8d9a1e8d09acb278c8535ebe9e972e1f162ed338a622f193/pydantic_core-2.41.5-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "1d1d9764366c73f996edd17abb6d9d7649a7eb690006ab6adbda117717099b14"
    end
  end
  resource "pyobjc" do
    url "https://files.pythonhosted.org/packages/ef/00/1085de7b73abf37ec27ad59f7a1d7a406e6e6da45720bced2e198fdf1ddf/pyobjc-12.1-py3-none-any.whl"
    sha256 "6f8c36cf87b1159d2ca1aa387ffc3efcd51cc3da13ef47c65f45e6d9fbccc729"
  end
  resource "pyobjc-core" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/25/98/9f4ed07162de69603144ff480be35cd021808faa7f730d082b92f7ebf2b5/pyobjc_core-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "844515f5d86395b979d02152576e7dee9cc679acc0b32dc626ef5bda315eaa43"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/25/98/9f4ed07162de69603144ff480be35cd021808faa7f730d082b92f7ebf2b5/pyobjc_core-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "844515f5d86395b979d02152576e7dee9cc679acc0b32dc626ef5bda315eaa43"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/25/98/9f4ed07162de69603144ff480be35cd021808faa7f730d082b92f7ebf2b5/pyobjc_core-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "844515f5d86395b979d02152576e7dee9cc679acc0b32dc626ef5bda315eaa43"
    else
      url "https://files.pythonhosted.org/packages/25/98/9f4ed07162de69603144ff480be35cd021808faa7f730d082b92f7ebf2b5/pyobjc_core-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "844515f5d86395b979d02152576e7dee9cc679acc0b32dc626ef5bda315eaa43"
    end
  end
  resource "pyobjc-framework-Accessibility" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/98/ce/21a076746ada1c03015ce23ee87aa3a3f052885ec386296d4d90c4fb0eb2/pyobjc_framework_accessibility-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0a14c794af7f38d8b59f6d7b03f708e61473a42d4a43663e7a2a6355121d11f7"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/98/ce/21a076746ada1c03015ce23ee87aa3a3f052885ec386296d4d90c4fb0eb2/pyobjc_framework_accessibility-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0a14c794af7f38d8b59f6d7b03f708e61473a42d4a43663e7a2a6355121d11f7"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/98/ce/21a076746ada1c03015ce23ee87aa3a3f052885ec386296d4d90c4fb0eb2/pyobjc_framework_accessibility-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0a14c794af7f38d8b59f6d7b03f708e61473a42d4a43663e7a2a6355121d11f7"
    else
      url "https://files.pythonhosted.org/packages/98/ce/21a076746ada1c03015ce23ee87aa3a3f052885ec386296d4d90c4fb0eb2/pyobjc_framework_accessibility-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0a14c794af7f38d8b59f6d7b03f708e61473a42d4a43663e7a2a6355121d11f7"
    end
  end
  resource "pyobjc-framework-Accounts" do
    url "https://files.pythonhosted.org/packages/ac/70/5f9214250f92fbe2e07f35778875d2771d612f313af2a0e4bacba80af28e/pyobjc_framework_accounts-12.1-py2.py3-none-any.whl"
    sha256 "e1544ad11a2f889a7aaed649188d0e76d58595a27eec07ca663847a7adb21ae5"
  end
  resource "pyobjc-framework-AddressBook" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/1c/bc/7a0648f3b56f16eab76e349e873f21cc5d33864d9915bb33ade9a100d1c0/pyobjc_framework_addressbook-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e4e24094fa293f158ed21fcd57414b759dc1220c23efec4ee8a7672d726b3576"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/1c/bc/7a0648f3b56f16eab76e349e873f21cc5d33864d9915bb33ade9a100d1c0/pyobjc_framework_addressbook-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e4e24094fa293f158ed21fcd57414b759dc1220c23efec4ee8a7672d726b3576"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/1c/bc/7a0648f3b56f16eab76e349e873f21cc5d33864d9915bb33ade9a100d1c0/pyobjc_framework_addressbook-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e4e24094fa293f158ed21fcd57414b759dc1220c23efec4ee8a7672d726b3576"
    else
      url "https://files.pythonhosted.org/packages/1c/bc/7a0648f3b56f16eab76e349e873f21cc5d33864d9915bb33ade9a100d1c0/pyobjc_framework_addressbook-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e4e24094fa293f158ed21fcd57414b759dc1220c23efec4ee8a7672d726b3576"
    end
  end
  resource "pyobjc-framework-AdServices" do
    url "https://files.pythonhosted.org/packages/ad/13/f7796469b25f50750299c4b0e95dc2f75c7c7fc4c93ef2c644f947f10529/pyobjc_framework_adservices-12.1-py2.py3-none-any.whl"
    sha256 "9ca3c55e35b2abb3149a0bce5de9a1f7e8ee4f8642036910ca8586ab2e161538"
  end
  resource "pyobjc-framework-AdSupport" do
    url "https://files.pythonhosted.org/packages/cd/1a/3e90d5a09953bde7b60946cd09cca1411aed05dea855cb88cb9e944c7006/pyobjc_framework_adsupport-12.1-py2.py3-none-any.whl"
    sha256 "97dcd8799dd61f047bb2eb788bbde81f86e95241b5e5173a3a61cfc05b5598b1"
  end
  resource "pyobjc-framework-AppleScriptKit" do
    url "https://files.pythonhosted.org/packages/3b/70/6c399c6ebc37a4e48acf63967e0a916878aedfe420531f6d739215184c0c/pyobjc_framework_applescriptkit-12.1-py2.py3-none-any.whl"
    sha256 "b955fc017b524027f635d92a8a45a5fd9fbae898f3e03de16ecd94aa4c4db987"
  end
  resource "pyobjc-framework-AppleScriptObjC" do
    url "https://files.pythonhosted.org/packages/3e/5f/9ce6706399706930eb29c5308037109c30cfb36f943a6df66fdf38cc842a/pyobjc_framework_applescriptobjc-12.1-py2.py3-none-any.whl"
    sha256 "79068f982cc22471712ce808c0a8fd5deea11258fc8d8c61968a84b1962a3d10"
  end
  resource "pyobjc-framework-ApplicationServices" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/40/44/3196b40fec68b4413c92875311f17ccf4c3ff7d2e53676f8fc18ad29bd18/pyobjc_framework_applicationservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f43c9a24ad97a9121276d4d571aa04a924282c80d7291cfb3b29839c3e2013a8"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/40/44/3196b40fec68b4413c92875311f17ccf4c3ff7d2e53676f8fc18ad29bd18/pyobjc_framework_applicationservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f43c9a24ad97a9121276d4d571aa04a924282c80d7291cfb3b29839c3e2013a8"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/40/44/3196b40fec68b4413c92875311f17ccf4c3ff7d2e53676f8fc18ad29bd18/pyobjc_framework_applicationservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f43c9a24ad97a9121276d4d571aa04a924282c80d7291cfb3b29839c3e2013a8"
    else
      url "https://files.pythonhosted.org/packages/40/44/3196b40fec68b4413c92875311f17ccf4c3ff7d2e53676f8fc18ad29bd18/pyobjc_framework_applicationservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f43c9a24ad97a9121276d4d571aa04a924282c80d7291cfb3b29839c3e2013a8"
    end
  end
  resource "pyobjc-framework-AppTrackingTransparency" do
    url "https://files.pythonhosted.org/packages/19/b2/90120b93ecfb099b6af21696c26356ad0f2182bdef72b6cba28aa6472ca6/pyobjc_framework_apptrackingtransparency-12.1-py2.py3-none-any.whl"
    sha256 "23a98ade55495f2f992ecf62c3cbd8f648cbd68ba5539c3f795bf66de82e37ca"
  end
  resource "pyobjc-framework-ARKit" do
    url "https://files.pythonhosted.org/packages/21/1e/64c55b409243b3eb9abc7a99e7b27ad4e16b9e74bc4b507fb7e7b81fd41a/pyobjc_framework_arkit-12.1-py2.py3-none-any.whl"
    sha256 "f6d39e28d858ee03f052d6780a552247e682204382dbc090f1d3192fa1b21493"
  end
  resource "pyobjc-framework-AudioVideoBridging" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/98/9a/f4b435523c297cdf25bfe0d0a8bb25ae0d3fa19813c2365cf1e93f462948/pyobjc_framework_audiovideobridging-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "88f97bf62cba0d07f623650a7b2a58f73aedcc03b523e2bcd5653042dd50c152"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/98/9a/f4b435523c297cdf25bfe0d0a8bb25ae0d3fa19813c2365cf1e93f462948/pyobjc_framework_audiovideobridging-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "88f97bf62cba0d07f623650a7b2a58f73aedcc03b523e2bcd5653042dd50c152"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/98/9a/f4b435523c297cdf25bfe0d0a8bb25ae0d3fa19813c2365cf1e93f462948/pyobjc_framework_audiovideobridging-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "88f97bf62cba0d07f623650a7b2a58f73aedcc03b523e2bcd5653042dd50c152"
    else
      url "https://files.pythonhosted.org/packages/98/9a/f4b435523c297cdf25bfe0d0a8bb25ae0d3fa19813c2365cf1e93f462948/pyobjc_framework_audiovideobridging-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "88f97bf62cba0d07f623650a7b2a58f73aedcc03b523e2bcd5653042dd50c152"
    end
  end
  resource "pyobjc-framework-AuthenticationServices" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a2/93/13232a82318153ec392a46c0f674baeb64ce0aaab05683d4c129ac0fafec/pyobjc_framework_authenticationservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3ee69de818ce91c3bea6f87deba59ab8392a2c17c48f3d6fce0639c0e548bb0c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/a2/93/13232a82318153ec392a46c0f674baeb64ce0aaab05683d4c129ac0fafec/pyobjc_framework_authenticationservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3ee69de818ce91c3bea6f87deba59ab8392a2c17c48f3d6fce0639c0e548bb0c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/a2/93/13232a82318153ec392a46c0f674baeb64ce0aaab05683d4c129ac0fafec/pyobjc_framework_authenticationservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3ee69de818ce91c3bea6f87deba59ab8392a2c17c48f3d6fce0639c0e548bb0c"
    else
      url "https://files.pythonhosted.org/packages/a2/93/13232a82318153ec392a46c0f674baeb64ce0aaab05683d4c129ac0fafec/pyobjc_framework_authenticationservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3ee69de818ce91c3bea6f87deba59ab8392a2c17c48f3d6fce0639c0e548bb0c"
    end
  end
  resource "pyobjc-framework-AutomaticAssessmentConfiguration" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/dd/36/b7a59d77cf0f3dfe8676ecd0ab22dca215df11a0f1623cb0dbac29bb30d2/pyobjc_framework_automaticassessmentconfiguration-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f5f1818c6f77daf64d954878bbbda6b3f5e41e23b599210da08fefed1f1d5981"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/dd/36/b7a59d77cf0f3dfe8676ecd0ab22dca215df11a0f1623cb0dbac29bb30d2/pyobjc_framework_automaticassessmentconfiguration-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f5f1818c6f77daf64d954878bbbda6b3f5e41e23b599210da08fefed1f1d5981"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/dd/36/b7a59d77cf0f3dfe8676ecd0ab22dca215df11a0f1623cb0dbac29bb30d2/pyobjc_framework_automaticassessmentconfiguration-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f5f1818c6f77daf64d954878bbbda6b3f5e41e23b599210da08fefed1f1d5981"
    else
      url "https://files.pythonhosted.org/packages/dd/36/b7a59d77cf0f3dfe8676ecd0ab22dca215df11a0f1623cb0dbac29bb30d2/pyobjc_framework_automaticassessmentconfiguration-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f5f1818c6f77daf64d954878bbbda6b3f5e41e23b599210da08fefed1f1d5981"
    end
  end
  resource "pyobjc-framework-Automator" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c6/be/97fcdb60072f443ec360d2aa07e45469125eed57e0158d50f00ef5431240/pyobjc_framework_automator-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fb6a177cac056f2ecacaae1d4815f4e10529025cb13184fdee297989b55846f7"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c6/be/97fcdb60072f443ec360d2aa07e45469125eed57e0158d50f00ef5431240/pyobjc_framework_automator-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fb6a177cac056f2ecacaae1d4815f4e10529025cb13184fdee297989b55846f7"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c6/be/97fcdb60072f443ec360d2aa07e45469125eed57e0158d50f00ef5431240/pyobjc_framework_automator-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fb6a177cac056f2ecacaae1d4815f4e10529025cb13184fdee297989b55846f7"
    else
      url "https://files.pythonhosted.org/packages/c6/be/97fcdb60072f443ec360d2aa07e45469125eed57e0158d50f00ef5431240/pyobjc_framework_automator-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fb6a177cac056f2ecacaae1d4815f4e10529025cb13184fdee297989b55846f7"
    end
  end
  resource "pyobjc-framework-AVFoundation" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/0c/65/a79cf3b8935a78329ac1107056b91868a581096a90ab6ddff5fd28db4947/pyobjc_framework_avfoundation-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9a3ffd1ae90bd72dbcf2875aa9254369e805b904140362a7338ebf1af54201a6"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/0c/65/a79cf3b8935a78329ac1107056b91868a581096a90ab6ddff5fd28db4947/pyobjc_framework_avfoundation-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9a3ffd1ae90bd72dbcf2875aa9254369e805b904140362a7338ebf1af54201a6"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/0c/65/a79cf3b8935a78329ac1107056b91868a581096a90ab6ddff5fd28db4947/pyobjc_framework_avfoundation-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9a3ffd1ae90bd72dbcf2875aa9254369e805b904140362a7338ebf1af54201a6"
    else
      url "https://files.pythonhosted.org/packages/0c/65/a79cf3b8935a78329ac1107056b91868a581096a90ab6ddff5fd28db4947/pyobjc_framework_avfoundation-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9a3ffd1ae90bd72dbcf2875aa9254369e805b904140362a7338ebf1af54201a6"
    end
  end
  resource "pyobjc-framework-AVKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/29/4e/bd28968f538f5b4f806431c782556aaa5c17567c83edb6df0ef83c7a26ca/pyobjc_framework_avkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f49ee90e4f8737ae5dea7579016cdf344b64092810bf5b5acf0cb9c1c6a0d328"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/29/4e/bd28968f538f5b4f806431c782556aaa5c17567c83edb6df0ef83c7a26ca/pyobjc_framework_avkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f49ee90e4f8737ae5dea7579016cdf344b64092810bf5b5acf0cb9c1c6a0d328"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/29/4e/bd28968f538f5b4f806431c782556aaa5c17567c83edb6df0ef83c7a26ca/pyobjc_framework_avkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f49ee90e4f8737ae5dea7579016cdf344b64092810bf5b5acf0cb9c1c6a0d328"
    else
      url "https://files.pythonhosted.org/packages/29/4e/bd28968f538f5b4f806431c782556aaa5c17567c83edb6df0ef83c7a26ca/pyobjc_framework_avkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f49ee90e4f8737ae5dea7579016cdf344b64092810bf5b5acf0cb9c1c6a0d328"
    end
  end
  resource "pyobjc-framework-AVRouting" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/b0/0a/9e9bf48c70f129c1fa42e84e091901b6aa6d11074365d93aa22a42d13ba6/pyobjc_framework_avrouting-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "defaad8e98793dfaceb7e36eba3da9bf92d0840207d39e39b018ce6eb41d80f8"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/b0/0a/9e9bf48c70f129c1fa42e84e091901b6aa6d11074365d93aa22a42d13ba6/pyobjc_framework_avrouting-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "defaad8e98793dfaceb7e36eba3da9bf92d0840207d39e39b018ce6eb41d80f8"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/b0/0a/9e9bf48c70f129c1fa42e84e091901b6aa6d11074365d93aa22a42d13ba6/pyobjc_framework_avrouting-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "defaad8e98793dfaceb7e36eba3da9bf92d0840207d39e39b018ce6eb41d80f8"
    else
      url "https://files.pythonhosted.org/packages/b0/0a/9e9bf48c70f129c1fa42e84e091901b6aa6d11074365d93aa22a42d13ba6/pyobjc_framework_avrouting-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "defaad8e98793dfaceb7e36eba3da9bf92d0840207d39e39b018ce6eb41d80f8"
    end
  end
  resource "pyobjc-framework-BackgroundAssets" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/f1/8b/80cd655122c20fd29edd3b2b609e6be006cef4bdc830d71944399c6abcd5/pyobjc_framework_backgroundassets-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "57d77b1babd450b18e32e852a47dd1095329323e1bed9f258b46c43e20e6d0fc"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/f1/8b/80cd655122c20fd29edd3b2b609e6be006cef4bdc830d71944399c6abcd5/pyobjc_framework_backgroundassets-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "57d77b1babd450b18e32e852a47dd1095329323e1bed9f258b46c43e20e6d0fc"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/f1/8b/80cd655122c20fd29edd3b2b609e6be006cef4bdc830d71944399c6abcd5/pyobjc_framework_backgroundassets-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "57d77b1babd450b18e32e852a47dd1095329323e1bed9f258b46c43e20e6d0fc"
    else
      url "https://files.pythonhosted.org/packages/f1/8b/80cd655122c20fd29edd3b2b609e6be006cef4bdc830d71944399c6abcd5/pyobjc_framework_backgroundassets-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "57d77b1babd450b18e32e852a47dd1095329323e1bed9f258b46c43e20e6d0fc"
    end
  end
  resource "pyobjc-framework-BrowserEngineKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/13/4d/a340f75fc6daa482d9d3470fe449da0d8e1263a6f77803f2b1185b3a69af/pyobjc_framework_browserenginekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ad7896751accf7a6f866e64e8155f97b6cf0fc0e6efd64e9940346d8fbf0ec66"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/13/4d/a340f75fc6daa482d9d3470fe449da0d8e1263a6f77803f2b1185b3a69af/pyobjc_framework_browserenginekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ad7896751accf7a6f866e64e8155f97b6cf0fc0e6efd64e9940346d8fbf0ec66"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/13/4d/a340f75fc6daa482d9d3470fe449da0d8e1263a6f77803f2b1185b3a69af/pyobjc_framework_browserenginekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ad7896751accf7a6f866e64e8155f97b6cf0fc0e6efd64e9940346d8fbf0ec66"
    else
      url "https://files.pythonhosted.org/packages/13/4d/a340f75fc6daa482d9d3470fe449da0d8e1263a6f77803f2b1185b3a69af/pyobjc_framework_browserenginekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ad7896751accf7a6f866e64e8155f97b6cf0fc0e6efd64e9940346d8fbf0ec66"
    end
  end
  resource "pyobjc-framework-BusinessChat" do
    url "https://files.pythonhosted.org/packages/53/88/4c727424b05efa33ed7f6c45e40333e5a8a8dc5bb238e34695addd68463b/pyobjc_framework_businesschat-12.1-py2.py3-none-any.whl"
    sha256 "f66ce741507b324de3c301d72ba0cfa6aaf7093d7235972332807645c118cc29"
  end
  resource "pyobjc-framework-CalendarStore" do
    url "https://files.pythonhosted.org/packages/fa/70/f68aebdb7d3fa2dec2e9da9e9cdaa76d370de326a495917dbcde7bb7711e/pyobjc_framework_calendarstore-12.1-py2.py3-none-any.whl"
    sha256 "18533e0fcbcdd29ee5884dfbd30606710f65df9b688bf47daee1438ee22e50cc"
  end
  resource "pyobjc-framework-CallKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e3/db/e8bcdde2b9cf109ebdf389e730900de7acf792664aa0a7fbc630cd61a82a/pyobjc_framework_callkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a2438a252ff428bca1c1d1db2fca921d2cc572ee5c582f000a713fb61b29324f"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e3/db/e8bcdde2b9cf109ebdf389e730900de7acf792664aa0a7fbc630cd61a82a/pyobjc_framework_callkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a2438a252ff428bca1c1d1db2fca921d2cc572ee5c582f000a713fb61b29324f"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e3/db/e8bcdde2b9cf109ebdf389e730900de7acf792664aa0a7fbc630cd61a82a/pyobjc_framework_callkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a2438a252ff428bca1c1d1db2fca921d2cc572ee5c582f000a713fb61b29324f"
    else
      url "https://files.pythonhosted.org/packages/e3/db/e8bcdde2b9cf109ebdf389e730900de7acf792664aa0a7fbc630cd61a82a/pyobjc_framework_callkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a2438a252ff428bca1c1d1db2fca921d2cc572ee5c582f000a713fb61b29324f"
    end
  end
  resource "pyobjc-framework-Carbon" do
    url "https://files.pythonhosted.org/packages/a4/9e/91853c8f98b9d5bccf464113908620c94cc12c2a3e4625f3ce172e3ea4bc/pyobjc_framework_carbon-12.1-py2.py3-none-any.whl"
    sha256 "f8b719b3c7c5cf1d61ac7c45a8a70b5e5e5a83fa02f5194c2a48a7e81a3d1b7f"
  end
  resource "pyobjc-framework-CFNetwork" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/6e/63/931cda003b627cc04c8e5bf9efecc391006305462192414b3d29eb16b5fd/pyobjc_framework_cfnetwork-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b94c190bdfdf0c8f3f6f7bf8e19ccc2847ecb67adab0068f8d12a25ab7df3c1a"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/6e/63/931cda003b627cc04c8e5bf9efecc391006305462192414b3d29eb16b5fd/pyobjc_framework_cfnetwork-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b94c190bdfdf0c8f3f6f7bf8e19ccc2847ecb67adab0068f8d12a25ab7df3c1a"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/6e/63/931cda003b627cc04c8e5bf9efecc391006305462192414b3d29eb16b5fd/pyobjc_framework_cfnetwork-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b94c190bdfdf0c8f3f6f7bf8e19ccc2847ecb67adab0068f8d12a25ab7df3c1a"
    else
      url "https://files.pythonhosted.org/packages/6e/63/931cda003b627cc04c8e5bf9efecc391006305462192414b3d29eb16b5fd/pyobjc_framework_cfnetwork-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b94c190bdfdf0c8f3f6f7bf8e19ccc2847ecb67adab0068f8d12a25ab7df3c1a"
    end
  end
  resource "pyobjc-framework-Cinematic" do
    url "https://files.pythonhosted.org/packages/c9/a0/cd85c827ce5535c08d936e5723c16ee49f7ff633f2e9881f4f58bf83e4ce/pyobjc_framework_cinematic-12.1-py2.py3-none-any.whl"
    sha256 "c003543bb6908379680a93dfd77a44228686b86c118cf3bc930f60241d0cd141"
  end
  resource "pyobjc-framework-ClassKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/2e/0b/7f25a43b0820a220a00c4a334d93c36cfa9e4248764054d6f9901eacbbd4/pyobjc_framework_classkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5d0a5cd026c51a22d13eb75404f8317089aabb3faef723aeafc4ca9a0c17e66e"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/2e/0b/7f25a43b0820a220a00c4a334d93c36cfa9e4248764054d6f9901eacbbd4/pyobjc_framework_classkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5d0a5cd026c51a22d13eb75404f8317089aabb3faef723aeafc4ca9a0c17e66e"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/2e/0b/7f25a43b0820a220a00c4a334d93c36cfa9e4248764054d6f9901eacbbd4/pyobjc_framework_classkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5d0a5cd026c51a22d13eb75404f8317089aabb3faef723aeafc4ca9a0c17e66e"
    else
      url "https://files.pythonhosted.org/packages/2e/0b/7f25a43b0820a220a00c4a334d93c36cfa9e4248764054d6f9901eacbbd4/pyobjc_framework_classkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5d0a5cd026c51a22d13eb75404f8317089aabb3faef723aeafc4ca9a0c17e66e"
    end
  end
  resource "pyobjc-framework-CloudKit" do
    url "https://files.pythonhosted.org/packages/35/71/cbef7179bf1a594558ea27f1e5ad18f5c17ef71a8a24192aae16127bc849/pyobjc_framework_cloudkit-12.1-py2.py3-none-any.whl"
    sha256 "875e37bf1a2ce3d05c2492692650104f2d908b56b71a0aedf6620bc517c6c9ca"
  end
  resource "pyobjc-framework-Cocoa" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/59/bb/f777cc9e775fc7dae77b569254570fe46eb842516b3e4fe383ab49eab598/pyobjc_framework_cocoa-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "03342a60fc0015bcdf9b93ac0b4f457d3938e9ef761b28df9564c91a14f0129a"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/59/bb/f777cc9e775fc7dae77b569254570fe46eb842516b3e4fe383ab49eab598/pyobjc_framework_cocoa-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "03342a60fc0015bcdf9b93ac0b4f457d3938e9ef761b28df9564c91a14f0129a"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/59/bb/f777cc9e775fc7dae77b569254570fe46eb842516b3e4fe383ab49eab598/pyobjc_framework_cocoa-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "03342a60fc0015bcdf9b93ac0b4f457d3938e9ef761b28df9564c91a14f0129a"
    else
      url "https://files.pythonhosted.org/packages/59/bb/f777cc9e775fc7dae77b569254570fe46eb842516b3e4fe383ab49eab598/pyobjc_framework_cocoa-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "03342a60fc0015bcdf9b93ac0b4f457d3938e9ef761b28df9564c91a14f0129a"
    end
  end
  resource "pyobjc-framework-Collaboration" do
    url "https://files.pythonhosted.org/packages/2a/66/1507de01f1e2b309f8e11553a52769e4e2e9939ed770b5b560ef5bc27bc1/pyobjc_framework_collaboration-12.1-py2.py3-none-any.whl"
    sha256 "182d6e6080833b97f9bef61738ae7bacb509714538f0d7281e5f0814c804b315"
  end
  resource "pyobjc-framework-ColorSync" do
    url "https://files.pythonhosted.org/packages/e8/e1/82e45c712f43905ee1e6d585180764e8fa6b6f1377feb872f9f03c8c1fb8/pyobjc_framework_colorsync-12.1-py2.py3-none-any.whl"
    sha256 "41e08d5b9a7af4b380c9adab24c7ff59dfd607b3073ae466693a3e791d8ffdc9"
  end
  resource "pyobjc-framework-CompositorServices" do
    url "https://files.pythonhosted.org/packages/f9/34/5a2de8d531dbb88023898e0b5d2ce8edee14751af6c70e6103f6aa31a669/pyobjc_framework_compositorservices-12.1-py2.py3-none-any.whl"
    sha256 "9ef22d4eacd492e13099b9b8936db892cdbbef1e3d23c3484e0ed749f83c4984"
  end
  resource "pyobjc-framework-Contacts" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/7e/8b/3200f69b77ea85fe69caa1afea444387b5e41bf44ceff11e772954d8a0d5/pyobjc_framework_contacts-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "65576c359eb31c5a5ef95e0c6714686a94bb154a508d791885ff7c33dbc8afa3"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/7e/8b/3200f69b77ea85fe69caa1afea444387b5e41bf44ceff11e772954d8a0d5/pyobjc_framework_contacts-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "65576c359eb31c5a5ef95e0c6714686a94bb154a508d791885ff7c33dbc8afa3"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/7e/8b/3200f69b77ea85fe69caa1afea444387b5e41bf44ceff11e772954d8a0d5/pyobjc_framework_contacts-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "65576c359eb31c5a5ef95e0c6714686a94bb154a508d791885ff7c33dbc8afa3"
    else
      url "https://files.pythonhosted.org/packages/7e/8b/3200f69b77ea85fe69caa1afea444387b5e41bf44ceff11e772954d8a0d5/pyobjc_framework_contacts-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "65576c359eb31c5a5ef95e0c6714686a94bb154a508d791885ff7c33dbc8afa3"
    end
  end
  resource "pyobjc-framework-ContactsUI" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/4b/d4/fe84efe4301a4367a2ab427214f20e13bfb3a64dc5e29649acc15022c0ad/pyobjc_framework_contactsui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "eb06b422ce8d422dce2c9af49a2bd093f78761e5aa3f1c866582a4c60cf31f79"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/4b/d4/fe84efe4301a4367a2ab427214f20e13bfb3a64dc5e29649acc15022c0ad/pyobjc_framework_contactsui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "eb06b422ce8d422dce2c9af49a2bd093f78761e5aa3f1c866582a4c60cf31f79"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4b/d4/fe84efe4301a4367a2ab427214f20e13bfb3a64dc5e29649acc15022c0ad/pyobjc_framework_contactsui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "eb06b422ce8d422dce2c9af49a2bd093f78761e5aa3f1c866582a4c60cf31f79"
    else
      url "https://files.pythonhosted.org/packages/4b/d4/fe84efe4301a4367a2ab427214f20e13bfb3a64dc5e29649acc15022c0ad/pyobjc_framework_contactsui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "eb06b422ce8d422dce2c9af49a2bd093f78761e5aa3f1c866582a4c60cf31f79"
    end
  end
  resource "pyobjc-framework-CoreAudio" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/cf/f2/c5ca32d01c9d892bf189cfe9b17deaf996db3b4013f8a8ba9b0d22730d70/pyobjc_framework_coreaudio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "78ea67483a5deb21625c189328152008d278fe1da4304da9fcc1babd12627038"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/cf/f2/c5ca32d01c9d892bf189cfe9b17deaf996db3b4013f8a8ba9b0d22730d70/pyobjc_framework_coreaudio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "78ea67483a5deb21625c189328152008d278fe1da4304da9fcc1babd12627038"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/cf/f2/c5ca32d01c9d892bf189cfe9b17deaf996db3b4013f8a8ba9b0d22730d70/pyobjc_framework_coreaudio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "78ea67483a5deb21625c189328152008d278fe1da4304da9fcc1babd12627038"
    else
      url "https://files.pythonhosted.org/packages/cf/f2/c5ca32d01c9d892bf189cfe9b17deaf996db3b4013f8a8ba9b0d22730d70/pyobjc_framework_coreaudio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "78ea67483a5deb21625c189328152008d278fe1da4304da9fcc1babd12627038"
    end
  end
  resource "pyobjc-framework-CoreAudioKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/92/65/36f017784df7ca5ad7741f1624c89410d62d0ebdeb437be32f7a1286a6df/pyobjc_framework_coreaudiokit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a2f9839a4bd05db2e7d12659af4cab32ec17dfee89fff83bbe9faee558e77a08"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/92/65/36f017784df7ca5ad7741f1624c89410d62d0ebdeb437be32f7a1286a6df/pyobjc_framework_coreaudiokit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a2f9839a4bd05db2e7d12659af4cab32ec17dfee89fff83bbe9faee558e77a08"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/92/65/36f017784df7ca5ad7741f1624c89410d62d0ebdeb437be32f7a1286a6df/pyobjc_framework_coreaudiokit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a2f9839a4bd05db2e7d12659af4cab32ec17dfee89fff83bbe9faee558e77a08"
    else
      url "https://files.pythonhosted.org/packages/92/65/36f017784df7ca5ad7741f1624c89410d62d0ebdeb437be32f7a1286a6df/pyobjc_framework_coreaudiokit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a2f9839a4bd05db2e7d12659af4cab32ec17dfee89fff83bbe9faee558e77a08"
    end
  end
  resource "pyobjc-framework-CoreBluetooth" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/2f/41/90640a4db62f0bf0611cf8a161129c798242116e2a6a44995668b017b106/pyobjc_framework_corebluetooth-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "15ba5207ca626dffe57ccb7c1beaf01f93930159564211cb97d744eaf0d812aa"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/2f/41/90640a4db62f0bf0611cf8a161129c798242116e2a6a44995668b017b106/pyobjc_framework_corebluetooth-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "15ba5207ca626dffe57ccb7c1beaf01f93930159564211cb97d744eaf0d812aa"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/2f/41/90640a4db62f0bf0611cf8a161129c798242116e2a6a44995668b017b106/pyobjc_framework_corebluetooth-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "15ba5207ca626dffe57ccb7c1beaf01f93930159564211cb97d744eaf0d812aa"
    else
      url "https://files.pythonhosted.org/packages/2f/41/90640a4db62f0bf0611cf8a161129c798242116e2a6a44995668b017b106/pyobjc_framework_corebluetooth-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "15ba5207ca626dffe57ccb7c1beaf01f93930159564211cb97d744eaf0d812aa"
    end
  end
  resource "pyobjc-framework-CoreData" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/66/2e/238dedc9499b4cccb963dccdfbbc420ace33a01fb9e1221a79c3044fecce/pyobjc_framework_coredata-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "07d19e7db06e1ad21708cf01fc8014d5f1b73efd373a99af6ff882c1bfb8497b"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/66/2e/238dedc9499b4cccb963dccdfbbc420ace33a01fb9e1221a79c3044fecce/pyobjc_framework_coredata-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "07d19e7db06e1ad21708cf01fc8014d5f1b73efd373a99af6ff882c1bfb8497b"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/66/2e/238dedc9499b4cccb963dccdfbbc420ace33a01fb9e1221a79c3044fecce/pyobjc_framework_coredata-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "07d19e7db06e1ad21708cf01fc8014d5f1b73efd373a99af6ff882c1bfb8497b"
    else
      url "https://files.pythonhosted.org/packages/66/2e/238dedc9499b4cccb963dccdfbbc420ace33a01fb9e1221a79c3044fecce/pyobjc_framework_coredata-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "07d19e7db06e1ad21708cf01fc8014d5f1b73efd373a99af6ff882c1bfb8497b"
    end
  end
  resource "pyobjc-framework-CoreHaptics" do
    url "https://files.pythonhosted.org/packages/25/f4/f469d6a9cac7c195f3d08fa65f94c32dd1dcf97a54b481be648fb3a7a5f3/pyobjc_framework_corehaptics-12.1-py2.py3-none-any.whl"
    sha256 "a3b07d36ddf5c86a9cdaa411ab53d09553d26ea04fc7d4f82d21a84f0fc05fc0"
  end
  resource "pyobjc-framework-CoreLocation" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/38/ef/cd24f05a406c4f8478117f7bf54a9a7753b6485b3fc645a5d0530b1fa34b/pyobjc_framework_corelocation-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3ed12521c457e484944fd91b1d19643d00596d3b0ea3455984c9e918a9c65138"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/38/ef/cd24f05a406c4f8478117f7bf54a9a7753b6485b3fc645a5d0530b1fa34b/pyobjc_framework_corelocation-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3ed12521c457e484944fd91b1d19643d00596d3b0ea3455984c9e918a9c65138"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/38/ef/cd24f05a406c4f8478117f7bf54a9a7753b6485b3fc645a5d0530b1fa34b/pyobjc_framework_corelocation-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3ed12521c457e484944fd91b1d19643d00596d3b0ea3455984c9e918a9c65138"
    else
      url "https://files.pythonhosted.org/packages/38/ef/cd24f05a406c4f8478117f7bf54a9a7753b6485b3fc645a5d0530b1fa34b/pyobjc_framework_corelocation-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3ed12521c457e484944fd91b1d19643d00596d3b0ea3455984c9e918a9c65138"
    end
  end
  resource "pyobjc-framework-CoreMedia" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/08/e2/b890658face1290c8b6b6b53a1159c822bece248f883e42302548bef38da/pyobjc_framework_coremedia-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "737ec6e0b63414f42f7188030c85975d6d2124fbf6b15b52c99b6cc20250af4d"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/08/e2/b890658face1290c8b6b6b53a1159c822bece248f883e42302548bef38da/pyobjc_framework_coremedia-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "737ec6e0b63414f42f7188030c85975d6d2124fbf6b15b52c99b6cc20250af4d"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/08/e2/b890658face1290c8b6b6b53a1159c822bece248f883e42302548bef38da/pyobjc_framework_coremedia-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "737ec6e0b63414f42f7188030c85975d6d2124fbf6b15b52c99b6cc20250af4d"
    else
      url "https://files.pythonhosted.org/packages/08/e2/b890658face1290c8b6b6b53a1159c822bece248f883e42302548bef38da/pyobjc_framework_coremedia-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "737ec6e0b63414f42f7188030c85975d6d2124fbf6b15b52c99b6cc20250af4d"
    end
  end
  resource "pyobjc-framework-CoreMediaIO" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/41/fd/cdf26be5b15ee2f2a73c320a62393e03ab15966ee8262540f918f0c7b181/pyobjc_framework_coremediaio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a5ca5763f185f48fedafec82f794dca53c55d2e52058d1b11baa43dd4ab0cd16"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/41/fd/cdf26be5b15ee2f2a73c320a62393e03ab15966ee8262540f918f0c7b181/pyobjc_framework_coremediaio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a5ca5763f185f48fedafec82f794dca53c55d2e52058d1b11baa43dd4ab0cd16"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/41/fd/cdf26be5b15ee2f2a73c320a62393e03ab15966ee8262540f918f0c7b181/pyobjc_framework_coremediaio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a5ca5763f185f48fedafec82f794dca53c55d2e52058d1b11baa43dd4ab0cd16"
    else
      url "https://files.pythonhosted.org/packages/41/fd/cdf26be5b15ee2f2a73c320a62393e03ab15966ee8262540f918f0c7b181/pyobjc_framework_coremediaio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a5ca5763f185f48fedafec82f794dca53c55d2e52058d1b11baa43dd4ab0cd16"
    end
  end
  resource "pyobjc-framework-CoreMIDI" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/29/4d/7d8d6ee42a2c6ebc89fb78fa6a2924de255f76ba7907656c26cc5847fc92/pyobjc_framework_coremidi-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b49442cf533923952f56049be407edbe2ab2ece04ae1c94ca1e28d500f9f5754"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/29/4d/7d8d6ee42a2c6ebc89fb78fa6a2924de255f76ba7907656c26cc5847fc92/pyobjc_framework_coremidi-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b49442cf533923952f56049be407edbe2ab2ece04ae1c94ca1e28d500f9f5754"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/29/4d/7d8d6ee42a2c6ebc89fb78fa6a2924de255f76ba7907656c26cc5847fc92/pyobjc_framework_coremidi-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b49442cf533923952f56049be407edbe2ab2ece04ae1c94ca1e28d500f9f5754"
    else
      url "https://files.pythonhosted.org/packages/29/4d/7d8d6ee42a2c6ebc89fb78fa6a2924de255f76ba7907656c26cc5847fc92/pyobjc_framework_coremidi-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b49442cf533923952f56049be407edbe2ab2ece04ae1c94ca1e28d500f9f5754"
    end
  end
  resource "pyobjc-framework-CoreML" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/bc/5c/510ae8e3663238d32e653ed6a09ac65611dd045a7241f12633c1ab48bb9b/pyobjc_framework_coreml-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a04a96e512ecf6999aa9e1f60ad5635cb9d1cd839be470341d8d1541797baef6"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/bc/5c/510ae8e3663238d32e653ed6a09ac65611dd045a7241f12633c1ab48bb9b/pyobjc_framework_coreml-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a04a96e512ecf6999aa9e1f60ad5635cb9d1cd839be470341d8d1541797baef6"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/bc/5c/510ae8e3663238d32e653ed6a09ac65611dd045a7241f12633c1ab48bb9b/pyobjc_framework_coreml-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a04a96e512ecf6999aa9e1f60ad5635cb9d1cd839be470341d8d1541797baef6"
    else
      url "https://files.pythonhosted.org/packages/bc/5c/510ae8e3663238d32e653ed6a09ac65611dd045a7241f12633c1ab48bb9b/pyobjc_framework_coreml-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a04a96e512ecf6999aa9e1f60ad5635cb9d1cd839be470341d8d1541797baef6"
    end
  end
  resource "pyobjc-framework-CoreMotion" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/21/b0/a1809fc3eea18db15d20bd2225f4d5e1cfc74f38b252e0cb1e3f2563bcfa/pyobjc_framework_coremotion-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e7ce95dfa7e33b5762e0a800d76ef9c6a34b827c700d7e80c3740b7cd05168a5"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/21/b0/a1809fc3eea18db15d20bd2225f4d5e1cfc74f38b252e0cb1e3f2563bcfa/pyobjc_framework_coremotion-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e7ce95dfa7e33b5762e0a800d76ef9c6a34b827c700d7e80c3740b7cd05168a5"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/21/b0/a1809fc3eea18db15d20bd2225f4d5e1cfc74f38b252e0cb1e3f2563bcfa/pyobjc_framework_coremotion-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e7ce95dfa7e33b5762e0a800d76ef9c6a34b827c700d7e80c3740b7cd05168a5"
    else
      url "https://files.pythonhosted.org/packages/21/b0/a1809fc3eea18db15d20bd2225f4d5e1cfc74f38b252e0cb1e3f2563bcfa/pyobjc_framework_coremotion-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e7ce95dfa7e33b5762e0a800d76ef9c6a34b827c700d7e80c3740b7cd05168a5"
    end
  end
  resource "pyobjc-framework-CoreServices" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/d8/b6/c4100905d92f1187f74701ab520da95a235c09e94a71e5872462660ac022/pyobjc_framework_coreservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c650e1083fb313b9c8df4be8d582c266aa1b99c75ed5d7e45e3a91a7b8a128b2"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/d8/b6/c4100905d92f1187f74701ab520da95a235c09e94a71e5872462660ac022/pyobjc_framework_coreservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c650e1083fb313b9c8df4be8d582c266aa1b99c75ed5d7e45e3a91a7b8a128b2"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/d8/b6/c4100905d92f1187f74701ab520da95a235c09e94a71e5872462660ac022/pyobjc_framework_coreservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c650e1083fb313b9c8df4be8d582c266aa1b99c75ed5d7e45e3a91a7b8a128b2"
    else
      url "https://files.pythonhosted.org/packages/d8/b6/c4100905d92f1187f74701ab520da95a235c09e94a71e5872462660ac022/pyobjc_framework_coreservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c650e1083fb313b9c8df4be8d582c266aa1b99c75ed5d7e45e3a91a7b8a128b2"
    end
  end
  resource "pyobjc-framework-CoreSpotlight" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/21/cf/11cafe42bc7209bd96d71323beb60d6d1cdb069eb651f120323b3ef9c8d4/pyobjc_framework_corespotlight-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "986ac40755e15aa3a562aac687b22c882de2b4b0fa58fbd419cc3487a0df1507"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/21/cf/11cafe42bc7209bd96d71323beb60d6d1cdb069eb651f120323b3ef9c8d4/pyobjc_framework_corespotlight-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "986ac40755e15aa3a562aac687b22c882de2b4b0fa58fbd419cc3487a0df1507"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/21/cf/11cafe42bc7209bd96d71323beb60d6d1cdb069eb651f120323b3ef9c8d4/pyobjc_framework_corespotlight-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "986ac40755e15aa3a562aac687b22c882de2b4b0fa58fbd419cc3487a0df1507"
    else
      url "https://files.pythonhosted.org/packages/21/cf/11cafe42bc7209bd96d71323beb60d6d1cdb069eb651f120323b3ef9c8d4/pyobjc_framework_corespotlight-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "986ac40755e15aa3a562aac687b22c882de2b4b0fa58fbd419cc3487a0df1507"
    end
  end
  resource "pyobjc-framework-CoreText" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ef/c3/adf9d306e9ead108167ab7a974ab7d171dbacf31c72fad63e12585f58023/pyobjc_framework_coretext-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "782a1a9617ea267c05226e9cd81a8dec529969a607fe1e037541ee1feb9524e9"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ef/c3/adf9d306e9ead108167ab7a974ab7d171dbacf31c72fad63e12585f58023/pyobjc_framework_coretext-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "782a1a9617ea267c05226e9cd81a8dec529969a607fe1e037541ee1feb9524e9"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ef/c3/adf9d306e9ead108167ab7a974ab7d171dbacf31c72fad63e12585f58023/pyobjc_framework_coretext-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "782a1a9617ea267c05226e9cd81a8dec529969a607fe1e037541ee1feb9524e9"
    else
      url "https://files.pythonhosted.org/packages/ef/c3/adf9d306e9ead108167ab7a974ab7d171dbacf31c72fad63e12585f58023/pyobjc_framework_coretext-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "782a1a9617ea267c05226e9cd81a8dec529969a607fe1e037541ee1feb9524e9"
    end
  end
  resource "pyobjc-framework-CoreWLAN" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e8/e2/e89ea1ee92de17ec53087868d0466f6fd8174488b613a46528a3642aa41d/pyobjc_framework_corewlan-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "336536ecfd503118f79c8337cc983bbf0768e3ba4ac142e0cf8db1408c644965"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e8/e2/e89ea1ee92de17ec53087868d0466f6fd8174488b613a46528a3642aa41d/pyobjc_framework_corewlan-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "336536ecfd503118f79c8337cc983bbf0768e3ba4ac142e0cf8db1408c644965"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e8/e2/e89ea1ee92de17ec53087868d0466f6fd8174488b613a46528a3642aa41d/pyobjc_framework_corewlan-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "336536ecfd503118f79c8337cc983bbf0768e3ba4ac142e0cf8db1408c644965"
    else
      url "https://files.pythonhosted.org/packages/e8/e2/e89ea1ee92de17ec53087868d0466f6fd8174488b613a46528a3642aa41d/pyobjc_framework_corewlan-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "336536ecfd503118f79c8337cc983bbf0768e3ba4ac142e0cf8db1408c644965"
    end
  end
  resource "pyobjc-framework-CryptoTokenKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/6d/cc/32c8e34c6c54e487b993eaabe70d997096fcc1d82176207f967858f2987b/pyobjc_framework_cryptotokenkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "94fa4b3903a1a39fe1d5874a5ae5b67471f488925c485a7e9c3575fbf9eba43e"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/6d/cc/32c8e34c6c54e487b993eaabe70d997096fcc1d82176207f967858f2987b/pyobjc_framework_cryptotokenkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "94fa4b3903a1a39fe1d5874a5ae5b67471f488925c485a7e9c3575fbf9eba43e"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/6d/cc/32c8e34c6c54e487b993eaabe70d997096fcc1d82176207f967858f2987b/pyobjc_framework_cryptotokenkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "94fa4b3903a1a39fe1d5874a5ae5b67471f488925c485a7e9c3575fbf9eba43e"
    else
      url "https://files.pythonhosted.org/packages/6d/cc/32c8e34c6c54e487b993eaabe70d997096fcc1d82176207f967858f2987b/pyobjc_framework_cryptotokenkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "94fa4b3903a1a39fe1d5874a5ae5b67471f488925c485a7e9c3575fbf9eba43e"
    end
  end
  resource "pyobjc-framework-DataDetection" do
    url "https://files.pythonhosted.org/packages/70/1c/5d2f941501e84da8fef8ef3fd378b5c083f063f083f97dd3e8a07f0404b3/pyobjc_framework_datadetection-12.1-py2.py3-none-any.whl"
    sha256 "4dc8e1d386d655b44b2681a4a2341fb2fc9addbf3dda14cb1553cd22be6a5387"
  end
  resource "pyobjc-framework-DeviceCheck" do
    url "https://files.pythonhosted.org/packages/c5/d8/1f1b13fa4775b6474c9ad0f4b823953eaeb6c11bd6f03fa8479429b36577/pyobjc_framework_devicecheck-12.1-py2.py3-none-any.whl"
    sha256 "ffd58148bdef4a1ee8548b243861b7d97a686e73808ca0efac5bef3c430e4a15"
  end
  resource "pyobjc-framework-DeviceDiscoveryExtension" do
    url "https://files.pythonhosted.org/packages/7e/0c/005fe8db1e19135f493a3de8c8d38031e1ad2d626de4ef89f282acf4aff7/pyobjc_framework_devicediscoveryextension-12.1-py2.py3-none-any.whl"
    sha256 "d6d6b606d27d4d88efc0bed4727c375e749149b360290c3ad2afc52337739a1b"
  end
  resource "pyobjc-framework-DictionaryServices" do
    url "https://files.pythonhosted.org/packages/e7/13/ab308e934146cfd54691ddad87e572cd1edb6659d795903c4c75904e2d7d/pyobjc_framework_dictionaryservices-12.1-py2.py3-none-any.whl"
    sha256 "578854eec17fa473ac17ab30050a7bbb2ab69f17c5c49b673695254c3e88ad4b"
  end
  resource "pyobjc-framework-DiscRecording" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/d1/f1/61b7d8a35fb654ece97b539912452334665abf0a1fa9e83cda809c674c9e/pyobjc_framework_discrecording-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a60e2cab88fdf923f2017effb248f7c32819fbe494a6d17acfa71754b44ff68c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/d1/f1/61b7d8a35fb654ece97b539912452334665abf0a1fa9e83cda809c674c9e/pyobjc_framework_discrecording-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a60e2cab88fdf923f2017effb248f7c32819fbe494a6d17acfa71754b44ff68c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/d1/f1/61b7d8a35fb654ece97b539912452334665abf0a1fa9e83cda809c674c9e/pyobjc_framework_discrecording-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a60e2cab88fdf923f2017effb248f7c32819fbe494a6d17acfa71754b44ff68c"
    else
      url "https://files.pythonhosted.org/packages/d1/f1/61b7d8a35fb654ece97b539912452334665abf0a1fa9e83cda809c674c9e/pyobjc_framework_discrecording-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a60e2cab88fdf923f2017effb248f7c32819fbe494a6d17acfa71754b44ff68c"
    end
  end
  resource "pyobjc-framework-DiscRecordingUI" do
    url "https://files.pythonhosted.org/packages/f2/4e/76016130c27b98943c5758a05beab3ba1bc9349ee881e1dfc509ea954233/pyobjc_framework_discrecordingui-12.1-py2.py3-none-any.whl"
    sha256 "6544ef99cad3dee95716c83cb207088768b6ecd3de178f7e1b17df5997689dfd"
  end
  resource "pyobjc-framework-DiskArbitration" do
    url "https://files.pythonhosted.org/packages/48/65/c1f54c47af17cb6b923eab85e95f22396c52f90ee8f5b387acffad9a99ea/pyobjc_framework_diskarbitration-12.1-py2.py3-none-any.whl"
    sha256 "54caf3079fe4ae5ac14466a9b68923ee260a1a88a8290686b4a2015ba14c2db6"
  end
  resource "pyobjc-framework-DVDPlayback" do
    url "https://files.pythonhosted.org/packages/29/7d/22c07c28fab1f15f0d364806e39a6ca63c737c645fe7e98e157878b5998c/pyobjc_framework_dvdplayback-12.1-py2.py3-none-any.whl"
    sha256 "af911cc222272a55b46a1a02a46a355279aecfd8132231d8d1b279e252b8ad4c"
  end
  resource "pyobjc-framework-EventKit" do
    url "https://files.pythonhosted.org/packages/f4/35/142f43227627d6324993869d354b9e57eb1e88c4e229e2271592254daf25/pyobjc_framework_eventkit-12.1-py2.py3-none-any.whl"
    sha256 "3d2d36d5bd9e0a13887a6ac7cdd36675985ebe2a9cb3cdf8cec0725670c92c60"
  end
  resource "pyobjc-framework-ExceptionHandling" do
    url "https://files.pythonhosted.org/packages/0b/ad/8e05acf3635f20ea7d878be30d58a484c8b901a8552c501feb7893472f86/pyobjc_framework_exceptionhandling-12.1-py2.py3-none-any.whl"
    sha256 "2f1eae14cf0162e53a0888d9ffe63f047501fe583a23cdc9c966e89f48cf4713"
  end
  resource "pyobjc-framework-ExecutionPolicy" do
    url "https://files.pythonhosted.org/packages/51/2c/f10352398f10f244401ab8f53cabd127dc3f5dbbfc8de83464661d716671/pyobjc_framework_executionpolicy-12.1-py2.py3-none-any.whl"
    sha256 "c3a9eca3bd143cf202787dd5e3f40d954c198f18a5e0b8b3e2fcdd317bf33a52"
  end
  resource "pyobjc-framework-ExtensionKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/fc/ec/a02ddac5ea7439dc4deb488ba551e27565920b8864c2f71611159794a1b5/pyobjc_framework_extensionkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b002bd4ee7aa951298f8bdd41e2a59d172050975499f94a26caff263b5fadca4"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/fc/ec/a02ddac5ea7439dc4deb488ba551e27565920b8864c2f71611159794a1b5/pyobjc_framework_extensionkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b002bd4ee7aa951298f8bdd41e2a59d172050975499f94a26caff263b5fadca4"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/fc/ec/a02ddac5ea7439dc4deb488ba551e27565920b8864c2f71611159794a1b5/pyobjc_framework_extensionkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b002bd4ee7aa951298f8bdd41e2a59d172050975499f94a26caff263b5fadca4"
    else
      url "https://files.pythonhosted.org/packages/fc/ec/a02ddac5ea7439dc4deb488ba551e27565920b8864c2f71611159794a1b5/pyobjc_framework_extensionkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b002bd4ee7aa951298f8bdd41e2a59d172050975499f94a26caff263b5fadca4"
    end
  end
  resource "pyobjc-framework-ExternalAccessory" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/7b/e4/b7f1c8b977e64b495a5f268f9f6d82ed71152268542a7e676c26c647a6b0/pyobjc_framework_externalaccessory-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "22efc5bf68f5f0ef39f4308ef06403c42544f5fc75f6eeb137a87af99357dda1"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/7b/e4/b7f1c8b977e64b495a5f268f9f6d82ed71152268542a7e676c26c647a6b0/pyobjc_framework_externalaccessory-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "22efc5bf68f5f0ef39f4308ef06403c42544f5fc75f6eeb137a87af99357dda1"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/7b/e4/b7f1c8b977e64b495a5f268f9f6d82ed71152268542a7e676c26c647a6b0/pyobjc_framework_externalaccessory-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "22efc5bf68f5f0ef39f4308ef06403c42544f5fc75f6eeb137a87af99357dda1"
    else
      url "https://files.pythonhosted.org/packages/7b/e4/b7f1c8b977e64b495a5f268f9f6d82ed71152268542a7e676c26c647a6b0/pyobjc_framework_externalaccessory-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "22efc5bf68f5f0ef39f4308ef06403c42544f5fc75f6eeb137a87af99357dda1"
    end
  end
  resource "pyobjc-framework-FileProvider" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/4f/8d/b1c6e0927d22d0c125c8a62cd2342c4613e3aabf13cb0e66ea62fe85fff1/pyobjc_framework_fileprovider-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "520b8c83b1ce63e0f668ea1683e3843f2e5379c0af76dceb19d5d540d584ff54"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/4f/8d/b1c6e0927d22d0c125c8a62cd2342c4613e3aabf13cb0e66ea62fe85fff1/pyobjc_framework_fileprovider-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "520b8c83b1ce63e0f668ea1683e3843f2e5379c0af76dceb19d5d540d584ff54"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4f/8d/b1c6e0927d22d0c125c8a62cd2342c4613e3aabf13cb0e66ea62fe85fff1/pyobjc_framework_fileprovider-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "520b8c83b1ce63e0f668ea1683e3843f2e5379c0af76dceb19d5d540d584ff54"
    else
      url "https://files.pythonhosted.org/packages/4f/8d/b1c6e0927d22d0c125c8a62cd2342c4613e3aabf13cb0e66ea62fe85fff1/pyobjc_framework_fileprovider-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "520b8c83b1ce63e0f668ea1683e3843f2e5379c0af76dceb19d5d540d584ff54"
    end
  end
  resource "pyobjc-framework-FileProviderUI" do
    url "https://files.pythonhosted.org/packages/e8/65/cc4397511bd0af91993d6302a2aed205296a9ad626146eefdfc8a9624219/pyobjc_framework_fileproviderui-12.1-py2.py3-none-any.whl"
    sha256 "521a914055089e28631018bd78df4c4f7416e98b4150f861d4a5bc97d5b1ffe4"
  end
  resource "pyobjc-framework-FinderSync" do
    url "https://files.pythonhosted.org/packages/6a/9f/ec7f393e3e2fd11cbdf930d884a0ba81078bdb61920b3cba4f264de8b446/pyobjc_framework_findersync-12.1-py2.py3-none-any.whl"
    sha256 "e07abeca52c486cf14927f617afc27afa7a3828b99fab3ad02355105fb29203e"
  end
  resource "pyobjc-framework-FSEvents" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/90/f6/d6ea1ce944adb3e2c77abc84470a825854428c72e71efe5742bad1c1b1cd/pyobjc_framework_fsevents-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "90819f2fe0516443f679273b128c212d9e6802570f2f1c8a1e190fed76e2dc48"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/90/f6/d6ea1ce944adb3e2c77abc84470a825854428c72e71efe5742bad1c1b1cd/pyobjc_framework_fsevents-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "90819f2fe0516443f679273b128c212d9e6802570f2f1c8a1e190fed76e2dc48"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/90/f6/d6ea1ce944adb3e2c77abc84470a825854428c72e71efe5742bad1c1b1cd/pyobjc_framework_fsevents-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "90819f2fe0516443f679273b128c212d9e6802570f2f1c8a1e190fed76e2dc48"
    else
      url "https://files.pythonhosted.org/packages/90/f6/d6ea1ce944adb3e2c77abc84470a825854428c72e71efe5742bad1c1b1cd/pyobjc_framework_fsevents-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "90819f2fe0516443f679273b128c212d9e6802570f2f1c8a1e190fed76e2dc48"
    end
  end
  resource "pyobjc-framework-FSKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/7f/4a/10a5d0a35ab18129289e0dfa2ab56469af2f1a9b2c8eeccd814d9c171e63/pyobjc_framework_fskit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d856df1b12ef79803e11904571411ffe5720ceb8840f489ca7ec977c1d789e57"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/7f/4a/10a5d0a35ab18129289e0dfa2ab56469af2f1a9b2c8eeccd814d9c171e63/pyobjc_framework_fskit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d856df1b12ef79803e11904571411ffe5720ceb8840f489ca7ec977c1d789e57"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/7f/4a/10a5d0a35ab18129289e0dfa2ab56469af2f1a9b2c8eeccd814d9c171e63/pyobjc_framework_fskit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d856df1b12ef79803e11904571411ffe5720ceb8840f489ca7ec977c1d789e57"
    else
      url "https://files.pythonhosted.org/packages/7f/4a/10a5d0a35ab18129289e0dfa2ab56469af2f1a9b2c8eeccd814d9c171e63/pyobjc_framework_fskit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d856df1b12ef79803e11904571411ffe5720ceb8840f489ca7ec977c1d789e57"
    end
  end
  resource "pyobjc-framework-GameCenter" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/7c/fb/5b4f1bd82e324f2fb598d3131f626744b6fbc9f87feda894bc854058de66/pyobjc_framework_gamecenter-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c452f65aaa102c11196193f44d41061ce33a66be2e9cf79d890d8eb611f84aa9"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/7c/fb/5b4f1bd82e324f2fb598d3131f626744b6fbc9f87feda894bc854058de66/pyobjc_framework_gamecenter-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c452f65aaa102c11196193f44d41061ce33a66be2e9cf79d890d8eb611f84aa9"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/7c/fb/5b4f1bd82e324f2fb598d3131f626744b6fbc9f87feda894bc854058de66/pyobjc_framework_gamecenter-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c452f65aaa102c11196193f44d41061ce33a66be2e9cf79d890d8eb611f84aa9"
    else
      url "https://files.pythonhosted.org/packages/7c/fb/5b4f1bd82e324f2fb598d3131f626744b6fbc9f87feda894bc854058de66/pyobjc_framework_gamecenter-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c452f65aaa102c11196193f44d41061ce33a66be2e9cf79d890d8eb611f84aa9"
    end
  end
  resource "pyobjc-framework-GameController" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/38/0a/4386a2436b7ae4df62c30b8a96d89be15c6c9e302b89fc7e7cd19ba3429c/pyobjc_framework_gamecontroller-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3404a6488bb498989304aa87ce6217c973505a627b6eb9ae7884fd804569b8e4"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/38/0a/4386a2436b7ae4df62c30b8a96d89be15c6c9e302b89fc7e7cd19ba3429c/pyobjc_framework_gamecontroller-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3404a6488bb498989304aa87ce6217c973505a627b6eb9ae7884fd804569b8e4"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/38/0a/4386a2436b7ae4df62c30b8a96d89be15c6c9e302b89fc7e7cd19ba3429c/pyobjc_framework_gamecontroller-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3404a6488bb498989304aa87ce6217c973505a627b6eb9ae7884fd804569b8e4"
    else
      url "https://files.pythonhosted.org/packages/38/0a/4386a2436b7ae4df62c30b8a96d89be15c6c9e302b89fc7e7cd19ba3429c/pyobjc_framework_gamecontroller-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3404a6488bb498989304aa87ce6217c973505a627b6eb9ae7884fd804569b8e4"
    end
  end
  resource "pyobjc-framework-GameKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/05/39/4a9a51cae1ced9d0f74ca6c68e7304b9b1c2d184fed11b736947535ba59f/pyobjc_framework_gamekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "14080fdea98ec01c3e06260f1f5b31aaf59c78c2872fe8b843e17fd0ce151fa4"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/05/39/4a9a51cae1ced9d0f74ca6c68e7304b9b1c2d184fed11b736947535ba59f/pyobjc_framework_gamekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "14080fdea98ec01c3e06260f1f5b31aaf59c78c2872fe8b843e17fd0ce151fa4"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/05/39/4a9a51cae1ced9d0f74ca6c68e7304b9b1c2d184fed11b736947535ba59f/pyobjc_framework_gamekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "14080fdea98ec01c3e06260f1f5b31aaf59c78c2872fe8b843e17fd0ce151fa4"
    else
      url "https://files.pythonhosted.org/packages/05/39/4a9a51cae1ced9d0f74ca6c68e7304b9b1c2d184fed11b736947535ba59f/pyobjc_framework_gamekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "14080fdea98ec01c3e06260f1f5b31aaf59c78c2872fe8b843e17fd0ce151fa4"
    end
  end
  resource "pyobjc-framework-GameplayKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/38/a5/e10365b7287eb4a8e83275f04942d085f8e87da0a65c375df14a78df23c8/pyobjc_framework_gameplaykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "786036bdf266faf196b29b23e123faf76df5f3e90f113e2a7cdd4d04af071dc2"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/38/a5/e10365b7287eb4a8e83275f04942d085f8e87da0a65c375df14a78df23c8/pyobjc_framework_gameplaykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "786036bdf266faf196b29b23e123faf76df5f3e90f113e2a7cdd4d04af071dc2"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/38/a5/e10365b7287eb4a8e83275f04942d085f8e87da0a65c375df14a78df23c8/pyobjc_framework_gameplaykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "786036bdf266faf196b29b23e123faf76df5f3e90f113e2a7cdd4d04af071dc2"
    else
      url "https://files.pythonhosted.org/packages/38/a5/e10365b7287eb4a8e83275f04942d085f8e87da0a65c375df14a78df23c8/pyobjc_framework_gameplaykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "786036bdf266faf196b29b23e123faf76df5f3e90f113e2a7cdd4d04af071dc2"
    end
  end
  resource "pyobjc-framework-GameSave" do
    url "https://files.pythonhosted.org/packages/59/ec/93d48cb048a1b35cea559cc9261b07f0d410078b3af029121302faa410d0/pyobjc_framework_gamesave-12.1-py2.py3-none-any.whl"
    sha256 "432e69f8404be9290d42c89caba241a3156ed52013947978ac54f0f032a14ffd"
  end
  resource "pyobjc-framework-HealthKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/f2/6f/99933449e0cb8d6424de8e709fe423427efc634f75930885a723debcce11/pyobjc_framework_healthkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1f10a3abf6d5a326192e96343e7e1d9d16efa0cf4b39266335e385455680bc69"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/f2/6f/99933449e0cb8d6424de8e709fe423427efc634f75930885a723debcce11/pyobjc_framework_healthkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1f10a3abf6d5a326192e96343e7e1d9d16efa0cf4b39266335e385455680bc69"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/f2/6f/99933449e0cb8d6424de8e709fe423427efc634f75930885a723debcce11/pyobjc_framework_healthkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1f10a3abf6d5a326192e96343e7e1d9d16efa0cf4b39266335e385455680bc69"
    else
      url "https://files.pythonhosted.org/packages/f2/6f/99933449e0cb8d6424de8e709fe423427efc634f75930885a723debcce11/pyobjc_framework_healthkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1f10a3abf6d5a326192e96343e7e1d9d16efa0cf4b39266335e385455680bc69"
    end
  end
  resource "pyobjc-framework-ImageCaptureCore" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/50/fc/feb035f2866050737f8315958e31cfe2bf5d6d4d046a7268d28b94cd8155/pyobjc_framework_imagecapturecore-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b7a7feeb0b53f5b0e0305c5c41f6b722d5f8cfca506c49678902244cd339ac10"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/50/fc/feb035f2866050737f8315958e31cfe2bf5d6d4d046a7268d28b94cd8155/pyobjc_framework_imagecapturecore-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b7a7feeb0b53f5b0e0305c5c41f6b722d5f8cfca506c49678902244cd339ac10"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/50/fc/feb035f2866050737f8315958e31cfe2bf5d6d4d046a7268d28b94cd8155/pyobjc_framework_imagecapturecore-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b7a7feeb0b53f5b0e0305c5c41f6b722d5f8cfca506c49678902244cd339ac10"
    else
      url "https://files.pythonhosted.org/packages/50/fc/feb035f2866050737f8315958e31cfe2bf5d6d4d046a7268d28b94cd8155/pyobjc_framework_imagecapturecore-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b7a7feeb0b53f5b0e0305c5c41f6b722d5f8cfca506c49678902244cd339ac10"
    end
  end
  resource "pyobjc-framework-InputMethodKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/76/f8/6915cc42826e1178c18cc9232edda15ef5d1f57950eef8fd6f8752853b9c/pyobjc_framework_inputmethodkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3b27c166574ad08d196129c979c5eec891cd630d249c75a970e26f3949578cb9"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/76/f8/6915cc42826e1178c18cc9232edda15ef5d1f57950eef8fd6f8752853b9c/pyobjc_framework_inputmethodkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3b27c166574ad08d196129c979c5eec891cd630d249c75a970e26f3949578cb9"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/76/f8/6915cc42826e1178c18cc9232edda15ef5d1f57950eef8fd6f8752853b9c/pyobjc_framework_inputmethodkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3b27c166574ad08d196129c979c5eec891cd630d249c75a970e26f3949578cb9"
    else
      url "https://files.pythonhosted.org/packages/76/f8/6915cc42826e1178c18cc9232edda15ef5d1f57950eef8fd6f8752853b9c/pyobjc_framework_inputmethodkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3b27c166574ad08d196129c979c5eec891cd630d249c75a970e26f3949578cb9"
    end
  end
  resource "pyobjc-framework-InstallerPlugins" do
    url "https://files.pythonhosted.org/packages/99/1f/31dca45db3342882a628aa1b27707a283d4dc7ef558fddd2533175a0661a/pyobjc_framework_installerplugins-12.1-py2.py3-none-any.whl"
    sha256 "d2201c81b05bdbe0abf0af25db58dc230802573463bea322f8b2863e37b511d5"
  end
  resource "pyobjc-framework-InstantMessage" do
    url "https://files.pythonhosted.org/packages/c1/38/6ae95b5c87d887c075bd5f4f7cca3d21dafd0a77cfdde870e87ca17579eb/pyobjc_framework_instantmessage-12.1-py2.py3-none-any.whl"
    sha256 "cd91d38e8f356afd726b6ea8c235699316ea90edfd3472965c251efbf4150bc9"
  end
  resource "pyobjc-framework-Intents" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/42/8a/d319b1a014dcf52cd46c2c956bed0e66f7c80253acaebd1ec5920b01bf41/pyobjc_framework_intents-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5c50c336418a3ba8fdfa5b5d12e46dca290e4321fb9844245af4a32b11cf6563"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/42/8a/d319b1a014dcf52cd46c2c956bed0e66f7c80253acaebd1ec5920b01bf41/pyobjc_framework_intents-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5c50c336418a3ba8fdfa5b5d12e46dca290e4321fb9844245af4a32b11cf6563"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/42/8a/d319b1a014dcf52cd46c2c956bed0e66f7c80253acaebd1ec5920b01bf41/pyobjc_framework_intents-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5c50c336418a3ba8fdfa5b5d12e46dca290e4321fb9844245af4a32b11cf6563"
    else
      url "https://files.pythonhosted.org/packages/42/8a/d319b1a014dcf52cd46c2c956bed0e66f7c80253acaebd1ec5920b01bf41/pyobjc_framework_intents-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5c50c336418a3ba8fdfa5b5d12e46dca290e4321fb9844245af4a32b11cf6563"
    end
  end
  resource "pyobjc-framework-IntentsUI" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/68/07/61dc855f6eeaf75d274ad4b66006e05b0bef2138a6a559c60f0bc59d32ea/pyobjc_framework_intentsui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d01222760005421324c3892b6b98c5b4295828a6b157a1fc410f63eb336b2d97"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/68/07/61dc855f6eeaf75d274ad4b66006e05b0bef2138a6a559c60f0bc59d32ea/pyobjc_framework_intentsui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d01222760005421324c3892b6b98c5b4295828a6b157a1fc410f63eb336b2d97"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/68/07/61dc855f6eeaf75d274ad4b66006e05b0bef2138a6a559c60f0bc59d32ea/pyobjc_framework_intentsui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d01222760005421324c3892b6b98c5b4295828a6b157a1fc410f63eb336b2d97"
    else
      url "https://files.pythonhosted.org/packages/68/07/61dc855f6eeaf75d274ad4b66006e05b0bef2138a6a559c60f0bc59d32ea/pyobjc_framework_intentsui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d01222760005421324c3892b6b98c5b4295828a6b157a1fc410f63eb336b2d97"
    end
  end
  resource "pyobjc-framework-IOBluetooth" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ef/58/4553d846513840622cd56ef715543f922d7d5ddfbe38316dbc7e43f23832/pyobjc_framework_iobluetooth-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a14506046ad9403ea95c75c1dd248167f41aef4aed62f50b567bf2482056ebf5"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ef/58/4553d846513840622cd56ef715543f922d7d5ddfbe38316dbc7e43f23832/pyobjc_framework_iobluetooth-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a14506046ad9403ea95c75c1dd248167f41aef4aed62f50b567bf2482056ebf5"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ef/58/4553d846513840622cd56ef715543f922d7d5ddfbe38316dbc7e43f23832/pyobjc_framework_iobluetooth-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a14506046ad9403ea95c75c1dd248167f41aef4aed62f50b567bf2482056ebf5"
    else
      url "https://files.pythonhosted.org/packages/ef/58/4553d846513840622cd56ef715543f922d7d5ddfbe38316dbc7e43f23832/pyobjc_framework_iobluetooth-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a14506046ad9403ea95c75c1dd248167f41aef4aed62f50b567bf2482056ebf5"
    end
  end
  resource "pyobjc-framework-IOBluetoothUI" do
    url "https://files.pythonhosted.org/packages/e3/c9/69aeda0cdb5d25d30dc4596a1c5b464fc81b5c0c4e28efc54b7e11bde51c/pyobjc_framework_iobluetoothui-12.1-py2.py3-none-any.whl"
    sha256 "a6d8ab98efa3029130577a57ee96b183c35c39b0f1c53a7534f8838260fab993"
  end
  resource "pyobjc-framework-IOSurface" do
    url "https://files.pythonhosted.org/packages/88/ad/793d98a7ed9b775dc8cce54144cdab0df1808a1960ee017e46189291a8f3/pyobjc_framework_iosurface-12.1-py2.py3-none-any.whl"
    sha256 "e784e248397cfebef4655d2c0025766d3eaa4a70474e363d084fc5ce2a4f2a3f"
  end
  resource "pyobjc-framework-iTunesLibrary" do
    url "https://files.pythonhosted.org/packages/de/92/b598694a1713ee46f45c4bfb1a0425082253cbd2b1caf9f8fd50f292b017/pyobjc_framework_ituneslibrary-12.1-py2.py3-none-any.whl"
    sha256 "fb678d7c3ff14c81672e09c015e25880dac278aa819971f4d5f75d46465932ef"
  end
  resource "pyobjc-framework-KernelManagement" do
    url "https://files.pythonhosted.org/packages/94/32/04325a20f39d88d6d712437e536961a9e6a4ec19f204f241de6ed54d1d84/pyobjc_framework_kernelmanagement-12.1-py2.py3-none-any.whl"
    sha256 "926381bfbfbc985c3e6dfcb7004af21bb16ff66ecbc08912b925989a705944ff"
  end
  resource "pyobjc-framework-LatentSemanticMapping" do
    url "https://files.pythonhosted.org/packages/29/8e/74a7eb29b545f294485cd3cf70557b4a35616555fe63021edbb3e0ea4c20/pyobjc_framework_latentsemanticmapping-12.1-py2.py3-none-any.whl"
    sha256 "7d760213b42bc8b1bc1472e1873c0f78ee80f987225978837b1fecdceddbdbf4"
  end
  resource "pyobjc-framework-LaunchServices" do
    url "https://files.pythonhosted.org/packages/08/af/9a0aebaab4c15632dc8fcb3669c68fa541a3278d99541d9c5f966fbc0909/pyobjc_framework_launchservices-12.1-py2.py3-none-any.whl"
    sha256 "e63e78fceeed4d4dc807f9dabd5cf90407e4f552fab6a0d75a8d0af63094ad3c"
  end
  resource "pyobjc-framework-libdispatch" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/59/d8/7d60a70fc1a546c6cb482fe0595cb4bd1368d75c48d49e76d0bc6c0a2d0f/pyobjc_framework_libdispatch-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0ebfd9e4446ab6528126bff25cfb09e4213ddf992b3208978911cfd3152e45f5"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/59/d8/7d60a70fc1a546c6cb482fe0595cb4bd1368d75c48d49e76d0bc6c0a2d0f/pyobjc_framework_libdispatch-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0ebfd9e4446ab6528126bff25cfb09e4213ddf992b3208978911cfd3152e45f5"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/59/d8/7d60a70fc1a546c6cb482fe0595cb4bd1368d75c48d49e76d0bc6c0a2d0f/pyobjc_framework_libdispatch-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0ebfd9e4446ab6528126bff25cfb09e4213ddf992b3208978911cfd3152e45f5"
    else
      url "https://files.pythonhosted.org/packages/59/d8/7d60a70fc1a546c6cb482fe0595cb4bd1368d75c48d49e76d0bc6c0a2d0f/pyobjc_framework_libdispatch-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0ebfd9e4446ab6528126bff25cfb09e4213ddf992b3208978911cfd3152e45f5"
    end
  end
  resource "pyobjc-framework-libxpc" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/fc/9d/d66559d9183dae383962c79ca67eaabf7fe9f8bb9f65cf5a4369fbdcdd0e/pyobjc_framework_libxpc-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bc5eaed7871fab8971631e99151ea0271f64d4059790c9f41a30ae4841f4fd89"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/fc/9d/d66559d9183dae383962c79ca67eaabf7fe9f8bb9f65cf5a4369fbdcdd0e/pyobjc_framework_libxpc-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bc5eaed7871fab8971631e99151ea0271f64d4059790c9f41a30ae4841f4fd89"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/fc/9d/d66559d9183dae383962c79ca67eaabf7fe9f8bb9f65cf5a4369fbdcdd0e/pyobjc_framework_libxpc-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bc5eaed7871fab8971631e99151ea0271f64d4059790c9f41a30ae4841f4fd89"
    else
      url "https://files.pythonhosted.org/packages/fc/9d/d66559d9183dae383962c79ca67eaabf7fe9f8bb9f65cf5a4369fbdcdd0e/pyobjc_framework_libxpc-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bc5eaed7871fab8971631e99151ea0271f64d4059790c9f41a30ae4841f4fd89"
    end
  end
  resource "pyobjc-framework-LinkPresentation" do
    url "https://files.pythonhosted.org/packages/ad/51/226eb45f196f3bf93374713571aae6c8a4760389e1d9435c4a4cc3f38ea4/pyobjc_framework_linkpresentation-12.1-py2.py3-none-any.whl"
    sha256 "853a84c7b525b77b114a7a8d798aef83f528ed3a6803bda12184fe5af4e79a47"
  end
  resource "pyobjc-framework-LocalAuthentication" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e6/58/6dfb304103b4cdaee44acd7f5093c07f3053df0cc9648c87876f1e5fc690/pyobjc_framework_localauthentication-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f8d525ed2ad5cd56e420436187b534454d1f7d1fae6e585df82397d6d92c6e54"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e6/58/6dfb304103b4cdaee44acd7f5093c07f3053df0cc9648c87876f1e5fc690/pyobjc_framework_localauthentication-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f8d525ed2ad5cd56e420436187b534454d1f7d1fae6e585df82397d6d92c6e54"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e6/58/6dfb304103b4cdaee44acd7f5093c07f3053df0cc9648c87876f1e5fc690/pyobjc_framework_localauthentication-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f8d525ed2ad5cd56e420436187b534454d1f7d1fae6e585df82397d6d92c6e54"
    else
      url "https://files.pythonhosted.org/packages/e6/58/6dfb304103b4cdaee44acd7f5093c07f3053df0cc9648c87876f1e5fc690/pyobjc_framework_localauthentication-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f8d525ed2ad5cd56e420436187b534454d1f7d1fae6e585df82397d6d92c6e54"
    end
  end
  resource "pyobjc-framework-LocalAuthenticationEmbeddedUI" do
    url "https://files.pythonhosted.org/packages/30/7d/0d46639c7a26b6af928ab4c822cd28b733791e02ac28cc84c3014bcf7dc7/pyobjc_framework_localauthenticationembeddedui-12.1-py2.py3-none-any.whl"
    sha256 "a7ce7b56346597b9f4768be61938cbc8fc5b1292137225b6c7f631b9cde97cd7"
  end
  resource "pyobjc-framework-MailKit" do
    url "https://files.pythonhosted.org/packages/70/8d/3c968b736a3a8bd9d8e870b39b1c772a013eea1b81b89fc4efad9021a6cb/pyobjc_framework_mailkit-12.1-py2.py3-none-any.whl"
    sha256 "536ac0c4ea3560364cd159a6512c3c18a744a12e4e0883c07df0f8a2ff21e3fe"
  end
  resource "pyobjc-framework-MapKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/06/ef/f802b9f0a620039b277374ba36702a0e359fe54e8526dcd90d2b061d2594/pyobjc_framework_mapkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c2f47e813e81cb13e48343108ea3185a856c13bab1cb17e76d0d87568e18459b"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/06/ef/f802b9f0a620039b277374ba36702a0e359fe54e8526dcd90d2b061d2594/pyobjc_framework_mapkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c2f47e813e81cb13e48343108ea3185a856c13bab1cb17e76d0d87568e18459b"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/06/ef/f802b9f0a620039b277374ba36702a0e359fe54e8526dcd90d2b061d2594/pyobjc_framework_mapkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c2f47e813e81cb13e48343108ea3185a856c13bab1cb17e76d0d87568e18459b"
    else
      url "https://files.pythonhosted.org/packages/06/ef/f802b9f0a620039b277374ba36702a0e359fe54e8526dcd90d2b061d2594/pyobjc_framework_mapkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c2f47e813e81cb13e48343108ea3185a856c13bab1cb17e76d0d87568e18459b"
    end
  end
  resource "pyobjc-framework-MediaAccessibility" do
    url "https://files.pythonhosted.org/packages/a2/0c/7fb5462561f59d739192c6d02ba0fd36ad7841efac5a8398a85a030ef7fc/pyobjc_framework_mediaaccessibility-12.1-py2.py3-none-any.whl"
    sha256 "2ff8845c97dd52b0e5cf53990291e6d77c8a73a7aac0e9235d62d9a4256916d1"
  end
  resource "pyobjc-framework-MediaExtension" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/4a/f0/fcff5206bb1a7ce89b9923ceb3215af767fd3c91dafc9d176ba08d6a3f30/pyobjc_framework_mediaextension-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4f66719c97f508c619368377d768266c58cc783cf5fc51bd9d8e5e0cad0c824c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/4a/f0/fcff5206bb1a7ce89b9923ceb3215af767fd3c91dafc9d176ba08d6a3f30/pyobjc_framework_mediaextension-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4f66719c97f508c619368377d768266c58cc783cf5fc51bd9d8e5e0cad0c824c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4a/f0/fcff5206bb1a7ce89b9923ceb3215af767fd3c91dafc9d176ba08d6a3f30/pyobjc_framework_mediaextension-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4f66719c97f508c619368377d768266c58cc783cf5fc51bd9d8e5e0cad0c824c"
    else
      url "https://files.pythonhosted.org/packages/4a/f0/fcff5206bb1a7ce89b9923ceb3215af767fd3c91dafc9d176ba08d6a3f30/pyobjc_framework_mediaextension-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4f66719c97f508c619368377d768266c58cc783cf5fc51bd9d8e5e0cad0c824c"
    end
  end
  resource "pyobjc-framework-MediaLibrary" do
    url "https://files.pythonhosted.org/packages/c2/cd/eeaf8585a343fda5b8cf3b8f144c872d1057c845202098b9441a39b76cb0/pyobjc_framework_medialibrary-12.1-py2.py3-none-any.whl"
    sha256 "1f03ad6802a5c6e19ee3208b065689d3ec79defe1052cb80e00f54e1eff5f2a0"
  end
  resource "pyobjc-framework-MediaPlayer" do
    url "https://files.pythonhosted.org/packages/58/c0/038ee3efd286c0fbc89c1e0cb688f4670ed0e5803aa36e739e79ffc91331/pyobjc_framework_mediaplayer-12.1-py2.py3-none-any.whl"
    sha256 "85d9baec131807bfdf0f4c24d4b943e83cce806ab31c95c7e19c78e3fb7eefc8"
  end
  resource "pyobjc-framework-MediaToolbox" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/bb/42/f0354b949f1eda6a57722a7450c77ff6689e53f9b2a933c4911e4385c2c8/pyobjc_framework_mediatoolbox-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "59921d4155a88d4acd04e80497707ac0208af3ff41574acba68214376e9fca23"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/bb/42/f0354b949f1eda6a57722a7450c77ff6689e53f9b2a933c4911e4385c2c8/pyobjc_framework_mediatoolbox-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "59921d4155a88d4acd04e80497707ac0208af3ff41574acba68214376e9fca23"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/bb/42/f0354b949f1eda6a57722a7450c77ff6689e53f9b2a933c4911e4385c2c8/pyobjc_framework_mediatoolbox-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "59921d4155a88d4acd04e80497707ac0208af3ff41574acba68214376e9fca23"
    else
      url "https://files.pythonhosted.org/packages/bb/42/f0354b949f1eda6a57722a7450c77ff6689e53f9b2a933c4911e4385c2c8/pyobjc_framework_mediatoolbox-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "59921d4155a88d4acd04e80497707ac0208af3ff41574acba68214376e9fca23"
    end
  end
  resource "pyobjc-framework-Metal" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/88/8a/890dbc66bdae2ec839e28a15f16696ed1ab34b3cf32d58ed4dcd76183f25/pyobjc_framework_metal-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2440db9b7057b6bafbabe8a2c5dde044865569176058ee34a7d138df0fc96c8c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/88/8a/890dbc66bdae2ec839e28a15f16696ed1ab34b3cf32d58ed4dcd76183f25/pyobjc_framework_metal-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2440db9b7057b6bafbabe8a2c5dde044865569176058ee34a7d138df0fc96c8c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/88/8a/890dbc66bdae2ec839e28a15f16696ed1ab34b3cf32d58ed4dcd76183f25/pyobjc_framework_metal-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2440db9b7057b6bafbabe8a2c5dde044865569176058ee34a7d138df0fc96c8c"
    else
      url "https://files.pythonhosted.org/packages/88/8a/890dbc66bdae2ec839e28a15f16696ed1ab34b3cf32d58ed4dcd76183f25/pyobjc_framework_metal-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2440db9b7057b6bafbabe8a2c5dde044865569176058ee34a7d138df0fc96c8c"
    end
  end
  resource "pyobjc-framework-MetalFX" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ae/a6/fe7108290f798f79f2efbcf511fdb605b834f3616496fae8bec0c719ba65/pyobjc_framework_metalfx-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b5c4d81ebe71be69db838041ec93c12fb0458fe68a06f61f87a4d892135953dc"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ae/a6/fe7108290f798f79f2efbcf511fdb605b834f3616496fae8bec0c719ba65/pyobjc_framework_metalfx-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b5c4d81ebe71be69db838041ec93c12fb0458fe68a06f61f87a4d892135953dc"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ae/a6/fe7108290f798f79f2efbcf511fdb605b834f3616496fae8bec0c719ba65/pyobjc_framework_metalfx-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b5c4d81ebe71be69db838041ec93c12fb0458fe68a06f61f87a4d892135953dc"
    else
      url "https://files.pythonhosted.org/packages/ae/a6/fe7108290f798f79f2efbcf511fdb605b834f3616496fae8bec0c719ba65/pyobjc_framework_metalfx-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b5c4d81ebe71be69db838041ec93c12fb0458fe68a06f61f87a4d892135953dc"
    end
  end
  resource "pyobjc-framework-MetalKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/d4/52/84c2829df343322025d3ad474153359c850c3189555c0819155044b8777d/pyobjc_framework_metalkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a1b8ac9582b65d2711836b56dd24ce450aa740b0c478da9ee0621cc4c64e64cb"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/d4/52/84c2829df343322025d3ad474153359c850c3189555c0819155044b8777d/pyobjc_framework_metalkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a1b8ac9582b65d2711836b56dd24ce450aa740b0c478da9ee0621cc4c64e64cb"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/d4/52/84c2829df343322025d3ad474153359c850c3189555c0819155044b8777d/pyobjc_framework_metalkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a1b8ac9582b65d2711836b56dd24ce450aa740b0c478da9ee0621cc4c64e64cb"
    else
      url "https://files.pythonhosted.org/packages/d4/52/84c2829df343322025d3ad474153359c850c3189555c0819155044b8777d/pyobjc_framework_metalkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a1b8ac9582b65d2711836b56dd24ce450aa740b0c478da9ee0621cc4c64e64cb"
    end
  end
  resource "pyobjc-framework-MetalPerformanceShaders" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/b4/d7/1177d8815549c90d8ddb0764b62c17bdaca6d6e03b8b54f3e7137167d8f3/pyobjc_framework_metalperformanceshaders-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5d5a0a5c859c5493d597842f3d011c59bf7c10d04a29852016298364fca9e16e"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/b4/d7/1177d8815549c90d8ddb0764b62c17bdaca6d6e03b8b54f3e7137167d8f3/pyobjc_framework_metalperformanceshaders-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5d5a0a5c859c5493d597842f3d011c59bf7c10d04a29852016298364fca9e16e"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/b4/d7/1177d8815549c90d8ddb0764b62c17bdaca6d6e03b8b54f3e7137167d8f3/pyobjc_framework_metalperformanceshaders-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5d5a0a5c859c5493d597842f3d011c59bf7c10d04a29852016298364fca9e16e"
    else
      url "https://files.pythonhosted.org/packages/b4/d7/1177d8815549c90d8ddb0764b62c17bdaca6d6e03b8b54f3e7137167d8f3/pyobjc_framework_metalperformanceshaders-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5d5a0a5c859c5493d597842f3d011c59bf7c10d04a29852016298364fca9e16e"
    end
  end
  resource "pyobjc-framework-MetalPerformanceShadersGraph" do
    url "https://files.pythonhosted.org/packages/e2/c9/5e7fd0d4bc9bdf7b442f36e020677c721ba9b4c1dc1fa3180085f22a4ef9/pyobjc_framework_metalperformanceshadersgraph-12.1-py2.py3-none-any.whl"
    sha256 "85a1c7a6114ada05c7924b3235a1a98c45359410d148097488f15aee5ebb6ab9"
  end
  resource "pyobjc-framework-MetricKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/d6/8b/a97a1463fc4453e5b1c157816a8356d800c4d66d5624154dc6dbdd7f52c0/pyobjc_framework_metrickit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f6cde78ba1a401660fe0e3a945d1941efef255c1021a8772a838aceb31bd74e6"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/d6/8b/a97a1463fc4453e5b1c157816a8356d800c4d66d5624154dc6dbdd7f52c0/pyobjc_framework_metrickit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f6cde78ba1a401660fe0e3a945d1941efef255c1021a8772a838aceb31bd74e6"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/d6/8b/a97a1463fc4453e5b1c157816a8356d800c4d66d5624154dc6dbdd7f52c0/pyobjc_framework_metrickit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f6cde78ba1a401660fe0e3a945d1941efef255c1021a8772a838aceb31bd74e6"
    else
      url "https://files.pythonhosted.org/packages/d6/8b/a97a1463fc4453e5b1c157816a8356d800c4d66d5624154dc6dbdd7f52c0/pyobjc_framework_metrickit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f6cde78ba1a401660fe0e3a945d1941efef255c1021a8772a838aceb31bd74e6"
    end
  end
  resource "pyobjc-framework-MLCompute" do
    url "https://files.pythonhosted.org/packages/ac/f7/4614b9ccd0151795e328b9ed881fbcbb13e577a8ec4ae3507edb1a462731/pyobjc_framework_mlcompute-12.1-py2.py3-none-any.whl"
    sha256 "4f0fc19551d710a03dfc4c7129299897544ff8ea76db6c7539ecc2f9b2571bde"
  end
  resource "pyobjc-framework-ModelIO" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/14/14/52b19e6ba86de2d38aed69a091c5d0c436c007ddf73441cbcc0a217db1d4/pyobjc_framework_modelio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5250e7f58cc71ca8928b33a00ac0dc56ca0eead97507f4bfcf777582a4b05e39"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/14/14/52b19e6ba86de2d38aed69a091c5d0c436c007ddf73441cbcc0a217db1d4/pyobjc_framework_modelio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5250e7f58cc71ca8928b33a00ac0dc56ca0eead97507f4bfcf777582a4b05e39"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/14/14/52b19e6ba86de2d38aed69a091c5d0c436c007ddf73441cbcc0a217db1d4/pyobjc_framework_modelio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5250e7f58cc71ca8928b33a00ac0dc56ca0eead97507f4bfcf777582a4b05e39"
    else
      url "https://files.pythonhosted.org/packages/14/14/52b19e6ba86de2d38aed69a091c5d0c436c007ddf73441cbcc0a217db1d4/pyobjc_framework_modelio-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5250e7f58cc71ca8928b33a00ac0dc56ca0eead97507f4bfcf777582a4b05e39"
    end
  end
  resource "pyobjc-framework-MultipeerConnectivity" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/d6/64/fd5932ab32bec0e340b60ca87f57c07a9d963b56ab5f857787efcec236e4/pyobjc_framework_multipeerconnectivity-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "014f92d7e176154531c3173cf7113b6be374c041646c4b86d93afb84d2ea334c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/d6/64/fd5932ab32bec0e340b60ca87f57c07a9d963b56ab5f857787efcec236e4/pyobjc_framework_multipeerconnectivity-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "014f92d7e176154531c3173cf7113b6be374c041646c4b86d93afb84d2ea334c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/d6/64/fd5932ab32bec0e340b60ca87f57c07a9d963b56ab5f857787efcec236e4/pyobjc_framework_multipeerconnectivity-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "014f92d7e176154531c3173cf7113b6be374c041646c4b86d93afb84d2ea334c"
    else
      url "https://files.pythonhosted.org/packages/d6/64/fd5932ab32bec0e340b60ca87f57c07a9d963b56ab5f857787efcec236e4/pyobjc_framework_multipeerconnectivity-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "014f92d7e176154531c3173cf7113b6be374c041646c4b86d93afb84d2ea334c"
    end
  end
  resource "pyobjc-framework-NaturalLanguage" do
    url "https://files.pythonhosted.org/packages/ec/d8/715a11111f76c80769cb267a19ecf2a4ac76152a6410debb5a4790422256/pyobjc_framework_naturallanguage-12.1-py2.py3-none-any.whl"
    sha256 "a02ef383ec88948ca28f03ab8995523726b3bc75c49f593b5c89c218bcbce7ce"
  end
  resource "pyobjc-framework-NetFS" do
    url "https://files.pythonhosted.org/packages/7e/6b/8c2f223879edd3e3f030d0a9c9ba812775519c6d0c257e3e7255785ca6e7/pyobjc_framework_netfs-12.1-py2.py3-none-any.whl"
    sha256 "0021f8b141e693d3821524c170e9c645090eb320e80c2935ddb978a6e8b8da81"
  end
  resource "pyobjc-framework-Network" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e0/6d/a7fb29708f2797fa96bfa6ae740b8154ac719e150939393453073121b7c9/pyobjc_framework_network-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "25e20ec81e23699e1182808384b8e426cb3ae9adaf639684232fc205edb48183"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e0/6d/a7fb29708f2797fa96bfa6ae740b8154ac719e150939393453073121b7c9/pyobjc_framework_network-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "25e20ec81e23699e1182808384b8e426cb3ae9adaf639684232fc205edb48183"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e0/6d/a7fb29708f2797fa96bfa6ae740b8154ac719e150939393453073121b7c9/pyobjc_framework_network-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "25e20ec81e23699e1182808384b8e426cb3ae9adaf639684232fc205edb48183"
    else
      url "https://files.pythonhosted.org/packages/e0/6d/a7fb29708f2797fa96bfa6ae740b8154ac719e150939393453073121b7c9/pyobjc_framework_network-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "25e20ec81e23699e1182808384b8e426cb3ae9adaf639684232fc205edb48183"
    end
  end
  resource "pyobjc-framework-NetworkExtension" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/b6/00/460b9ef440663299153ac0c165a56916620016435d402e4cf4cfdc74b521/pyobjc_framework_networkextension-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "21076ec44790023b579f21f6b88e13388d353de98658dbb50369df53e6a9c967"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/b6/00/460b9ef440663299153ac0c165a56916620016435d402e4cf4cfdc74b521/pyobjc_framework_networkextension-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "21076ec44790023b579f21f6b88e13388d353de98658dbb50369df53e6a9c967"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/b6/00/460b9ef440663299153ac0c165a56916620016435d402e4cf4cfdc74b521/pyobjc_framework_networkextension-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "21076ec44790023b579f21f6b88e13388d353de98658dbb50369df53e6a9c967"
    else
      url "https://files.pythonhosted.org/packages/b6/00/460b9ef440663299153ac0c165a56916620016435d402e4cf4cfdc74b521/pyobjc_framework_networkextension-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "21076ec44790023b579f21f6b88e13388d353de98658dbb50369df53e6a9c967"
    end
  end
  resource "pyobjc-framework-NotificationCenter" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/da/0a/621ed53aa7521d534275b8069c0f0d5e6517d772808a49add8476ad5c86d/pyobjc_framework_notificationcenter-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9495b1b0820a3e82bfcd0331b92bc29e4e4ca3a4e58d6ec0e1eda6c301ec4460"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/da/0a/621ed53aa7521d534275b8069c0f0d5e6517d772808a49add8476ad5c86d/pyobjc_framework_notificationcenter-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9495b1b0820a3e82bfcd0331b92bc29e4e4ca3a4e58d6ec0e1eda6c301ec4460"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/da/0a/621ed53aa7521d534275b8069c0f0d5e6517d772808a49add8476ad5c86d/pyobjc_framework_notificationcenter-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9495b1b0820a3e82bfcd0331b92bc29e4e4ca3a4e58d6ec0e1eda6c301ec4460"
    else
      url "https://files.pythonhosted.org/packages/da/0a/621ed53aa7521d534275b8069c0f0d5e6517d772808a49add8476ad5c86d/pyobjc_framework_notificationcenter-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9495b1b0820a3e82bfcd0331b92bc29e4e4ca3a4e58d6ec0e1eda6c301ec4460"
    end
  end
  resource "pyobjc-framework-OpenDirectory" do
    url "https://files.pythonhosted.org/packages/d6/e7/3c2dece9c5b28af28a44d72a27b35ea5ffac31fed7cbd8d696ea75dc4a81/pyobjc_framework_opendirectory-12.1-py2.py3-none-any.whl"
    sha256 "b5b5a5cf3cc2fb25147b16b79f046b90e3982bf3ded1b210a993d8cfdba737c4"
  end
  resource "pyobjc-framework-OSAKit" do
    url "https://files.pythonhosted.org/packages/99/10/30a15d7b23e6fcfa63d41ca4c7356c39ff81300249de89c3ff28216a9790/pyobjc_framework_osakit-12.1-py2.py3-none-any.whl"
    sha256 "c49165336856fd75113d2e264a98c6deb235f1bd033eae48f661d4d832d85e6b"
  end
  resource "pyobjc-framework-OSLog" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/f4/c1/7a7742fc81708c53a0f736ce883069b3c1797440d691a7ed7b8e29e8dbbd/pyobjc_framework_oslog-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "16d98c49698da839b79904a2c63fee658fd4a8c4fa9223e5694270533127e8d4"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/f4/c1/7a7742fc81708c53a0f736ce883069b3c1797440d691a7ed7b8e29e8dbbd/pyobjc_framework_oslog-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "16d98c49698da839b79904a2c63fee658fd4a8c4fa9223e5694270533127e8d4"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/f4/c1/7a7742fc81708c53a0f736ce883069b3c1797440d691a7ed7b8e29e8dbbd/pyobjc_framework_oslog-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "16d98c49698da839b79904a2c63fee658fd4a8c4fa9223e5694270533127e8d4"
    else
      url "https://files.pythonhosted.org/packages/f4/c1/7a7742fc81708c53a0f736ce883069b3c1797440d691a7ed7b8e29e8dbbd/pyobjc_framework_oslog-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "16d98c49698da839b79904a2c63fee658fd4a8c4fa9223e5694270533127e8d4"
    end
  end
  resource "pyobjc-framework-PassKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/dc/71/bde73bb39a836fb07c10fbdc60f38a3bd436c0aada1de0f4140737813930/pyobjc_framework_passkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e28dcf1074cddd82c2bd3ee5c3800952ac59850578b1135b38871ff584ea9d41"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/dc/71/bde73bb39a836fb07c10fbdc60f38a3bd436c0aada1de0f4140737813930/pyobjc_framework_passkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e28dcf1074cddd82c2bd3ee5c3800952ac59850578b1135b38871ff584ea9d41"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/dc/71/bde73bb39a836fb07c10fbdc60f38a3bd436c0aada1de0f4140737813930/pyobjc_framework_passkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e28dcf1074cddd82c2bd3ee5c3800952ac59850578b1135b38871ff584ea9d41"
    else
      url "https://files.pythonhosted.org/packages/dc/71/bde73bb39a836fb07c10fbdc60f38a3bd436c0aada1de0f4140737813930/pyobjc_framework_passkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e28dcf1074cddd82c2bd3ee5c3800952ac59850578b1135b38871ff584ea9d41"
    end
  end
  resource "pyobjc-framework-PencilKit" do
    url "https://files.pythonhosted.org/packages/e8/26/daf47dcfced8f7326218dced5c68ed2f3b522ec113329218ce1305809535/pyobjc_framework_pencilkit-12.1-py2.py3-none-any.whl"
    sha256 "33b88e5ed15724a12fd8bf27a68614b654ff739d227e81161298bc0d03acca4f"
  end
  resource "pyobjc-framework-PHASE" do
    url "https://files.pythonhosted.org/packages/ae/9f/1ae45db731e8d6dd3e0b408c3accd0cf3236849e671f95c7c8cf95687240/pyobjc_framework_phase-12.1-py2.py3-none-any.whl"
    sha256 "99a1c1efc6644f5312cce3693117d4e4482538f65ad08fe59e41e2579b67ab17"
  end
  resource "pyobjc-framework-Photos" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c2/5c/47b9e1f6ac61a80b6544091dffe42dc883217d6e670ddc188968988ba7f6/pyobjc_framework_photos-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "95d5036bdaf1c50559adfa60fd715b57c68577d2574241ed1890e359849f923f"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c2/5c/47b9e1f6ac61a80b6544091dffe42dc883217d6e670ddc188968988ba7f6/pyobjc_framework_photos-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "95d5036bdaf1c50559adfa60fd715b57c68577d2574241ed1890e359849f923f"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c2/5c/47b9e1f6ac61a80b6544091dffe42dc883217d6e670ddc188968988ba7f6/pyobjc_framework_photos-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "95d5036bdaf1c50559adfa60fd715b57c68577d2574241ed1890e359849f923f"
    else
      url "https://files.pythonhosted.org/packages/c2/5c/47b9e1f6ac61a80b6544091dffe42dc883217d6e670ddc188968988ba7f6/pyobjc_framework_photos-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "95d5036bdaf1c50559adfa60fd715b57c68577d2574241ed1890e359849f923f"
    end
  end
  resource "pyobjc-framework-PhotosUI" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/33/4e/d45cae151b0b46ab4110b6ea7d689af9480a07ced3dbf5f0860b201a542a/pyobjc_framework_photosui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a8e0320908f497d1e548336569f435afd27ed964e65b2aefa3a2d2ea4c041da2"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/33/4e/d45cae151b0b46ab4110b6ea7d689af9480a07ced3dbf5f0860b201a542a/pyobjc_framework_photosui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a8e0320908f497d1e548336569f435afd27ed964e65b2aefa3a2d2ea4c041da2"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/33/4e/d45cae151b0b46ab4110b6ea7d689af9480a07ced3dbf5f0860b201a542a/pyobjc_framework_photosui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a8e0320908f497d1e548336569f435afd27ed964e65b2aefa3a2d2ea4c041da2"
    else
      url "https://files.pythonhosted.org/packages/33/4e/d45cae151b0b46ab4110b6ea7d689af9480a07ced3dbf5f0860b201a542a/pyobjc_framework_photosui-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a8e0320908f497d1e548336569f435afd27ed964e65b2aefa3a2d2ea4c041da2"
    end
  end
  resource "pyobjc-framework-PreferencePanes" do
    url "https://files.pythonhosted.org/packages/36/7b/8ceec1ab0446224d685e243e2770c5a5c92285bcab0b9324dbe7a893ae5a/pyobjc_framework_preferencepanes-12.1-py2.py3-none-any.whl"
    sha256 "1b3af9db9e0cfed8db28c260b2cf9a22c15fda5f0ff4c26157b17f99a0e29bbf"
  end
  resource "pyobjc-framework-PushKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/16/09/9ba944e1146308460bf7474cdc2a0844682862f9850576494035a7653f4a/pyobjc_framework_pushkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "de82e1f6e01444582ad2ca6a76aeee1524c23695f0e4f56596f9db3e9d635623"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/16/09/9ba944e1146308460bf7474cdc2a0844682862f9850576494035a7653f4a/pyobjc_framework_pushkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "de82e1f6e01444582ad2ca6a76aeee1524c23695f0e4f56596f9db3e9d635623"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/16/09/9ba944e1146308460bf7474cdc2a0844682862f9850576494035a7653f4a/pyobjc_framework_pushkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "de82e1f6e01444582ad2ca6a76aeee1524c23695f0e4f56596f9db3e9d635623"
    else
      url "https://files.pythonhosted.org/packages/16/09/9ba944e1146308460bf7474cdc2a0844682862f9850576494035a7653f4a/pyobjc_framework_pushkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "de82e1f6e01444582ad2ca6a76aeee1524c23695f0e4f56596f9db3e9d635623"
    end
  end
  resource "pyobjc-framework-Quartz" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/4a/00/96249c5c7e5aaca5f688ca18b8d8ad05cd7886ebd639b3c71a6a4cadbe75/pyobjc_framework_quartz-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "42d306b07f05ae7d155984503e0fb1b701fecd31dcc5c79fe8ab9790ff7e0de0"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/4a/00/96249c5c7e5aaca5f688ca18b8d8ad05cd7886ebd639b3c71a6a4cadbe75/pyobjc_framework_quartz-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "42d306b07f05ae7d155984503e0fb1b701fecd31dcc5c79fe8ab9790ff7e0de0"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4a/00/96249c5c7e5aaca5f688ca18b8d8ad05cd7886ebd639b3c71a6a4cadbe75/pyobjc_framework_quartz-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "42d306b07f05ae7d155984503e0fb1b701fecd31dcc5c79fe8ab9790ff7e0de0"
    else
      url "https://files.pythonhosted.org/packages/4a/00/96249c5c7e5aaca5f688ca18b8d8ad05cd7886ebd639b3c71a6a4cadbe75/pyobjc_framework_quartz-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "42d306b07f05ae7d155984503e0fb1b701fecd31dcc5c79fe8ab9790ff7e0de0"
    end
  end
  resource "pyobjc-framework-QuickLookThumbnailing" do
    url "https://files.pythonhosted.org/packages/1e/22/7bd07b5b44bf8540514a9f24bc46da68812c1fd6c63bb2d3496e5ea44bf0/pyobjc_framework_quicklookthumbnailing-12.1-py2.py3-none-any.whl"
    sha256 "5efe50b0318188b3a4147681788b47fce64709f6fe0e1b5d020e408ef40ab08e"
  end
  resource "pyobjc-framework-ReplayKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/f7/e7/e3efd189fbaf349962a98db3d63b3ba30fd5f27e249cc933993478421ebc/pyobjc_framework_replaykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d6d8046825149f7f2627987a1b48ac7e4c9747a15e263054de0dfde1926a0f42"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/f7/e7/e3efd189fbaf349962a98db3d63b3ba30fd5f27e249cc933993478421ebc/pyobjc_framework_replaykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d6d8046825149f7f2627987a1b48ac7e4c9747a15e263054de0dfde1926a0f42"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/f7/e7/e3efd189fbaf349962a98db3d63b3ba30fd5f27e249cc933993478421ebc/pyobjc_framework_replaykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d6d8046825149f7f2627987a1b48ac7e4c9747a15e263054de0dfde1926a0f42"
    else
      url "https://files.pythonhosted.org/packages/f7/e7/e3efd189fbaf349962a98db3d63b3ba30fd5f27e249cc933993478421ebc/pyobjc_framework_replaykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d6d8046825149f7f2627987a1b48ac7e4c9747a15e263054de0dfde1926a0f42"
    end
  end
  resource "pyobjc-framework-SafariServices" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/99/c3/766dd0e14d61ed05d416bccc4435a977169d5256828ab31ba5939b2f953d/pyobjc_framework_safariservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "090afa066820de497d2479a1c5bd4c8ed381eb36a615e4644e12e347ec9d9a3e"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/99/c3/766dd0e14d61ed05d416bccc4435a977169d5256828ab31ba5939b2f953d/pyobjc_framework_safariservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "090afa066820de497d2479a1c5bd4c8ed381eb36a615e4644e12e347ec9d9a3e"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/99/c3/766dd0e14d61ed05d416bccc4435a977169d5256828ab31ba5939b2f953d/pyobjc_framework_safariservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "090afa066820de497d2479a1c5bd4c8ed381eb36a615e4644e12e347ec9d9a3e"
    else
      url "https://files.pythonhosted.org/packages/99/c3/766dd0e14d61ed05d416bccc4435a977169d5256828ab31ba5939b2f953d/pyobjc_framework_safariservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "090afa066820de497d2479a1c5bd4c8ed381eb36a615e4644e12e347ec9d9a3e"
    end
  end
  resource "pyobjc-framework-SafetyKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/d9/ec/759117239a3edbd8994069f1f595e4fbc72fa60fa7ebb4aeb4fd47265e7c/pyobjc_framework_safetykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1b0e8761fd53e6a83a48dbd93961434b05fe17658478b9001c65627da46ba02b"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/d9/ec/759117239a3edbd8994069f1f595e4fbc72fa60fa7ebb4aeb4fd47265e7c/pyobjc_framework_safetykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1b0e8761fd53e6a83a48dbd93961434b05fe17658478b9001c65627da46ba02b"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/d9/ec/759117239a3edbd8994069f1f595e4fbc72fa60fa7ebb4aeb4fd47265e7c/pyobjc_framework_safetykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1b0e8761fd53e6a83a48dbd93961434b05fe17658478b9001c65627da46ba02b"
    else
      url "https://files.pythonhosted.org/packages/d9/ec/759117239a3edbd8994069f1f595e4fbc72fa60fa7ebb4aeb4fd47265e7c/pyobjc_framework_safetykit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1b0e8761fd53e6a83a48dbd93961434b05fe17658478b9001c65627da46ba02b"
    end
  end
  resource "pyobjc-framework-SceneKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/5a/0c/eb436dda11b6f950bff7f7d9af108970058f2fa9822a946a6982d74a64f8/pyobjc_framework_scenekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d4c8512c9186f12602ac19558072cdeec3a607d628c269317d5965341a14372c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/5a/0c/eb436dda11b6f950bff7f7d9af108970058f2fa9822a946a6982d74a64f8/pyobjc_framework_scenekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d4c8512c9186f12602ac19558072cdeec3a607d628c269317d5965341a14372c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/5a/0c/eb436dda11b6f950bff7f7d9af108970058f2fa9822a946a6982d74a64f8/pyobjc_framework_scenekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d4c8512c9186f12602ac19558072cdeec3a607d628c269317d5965341a14372c"
    else
      url "https://files.pythonhosted.org/packages/5a/0c/eb436dda11b6f950bff7f7d9af108970058f2fa9822a946a6982d74a64f8/pyobjc_framework_scenekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d4c8512c9186f12602ac19558072cdeec3a607d628c269317d5965341a14372c"
    end
  end
  resource "pyobjc-framework-ScreenCaptureKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/be/b4/881e2ff0e11e7d705716f01f1bfd10232f7d21bda38d630c3fbe409b13a9/pyobjc_framework_screencapturekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "be210ea5df36c1392425c026c59c5e0797b0d6e07ee9551d032e40bed95d2833"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/be/b4/881e2ff0e11e7d705716f01f1bfd10232f7d21bda38d630c3fbe409b13a9/pyobjc_framework_screencapturekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "be210ea5df36c1392425c026c59c5e0797b0d6e07ee9551d032e40bed95d2833"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/be/b4/881e2ff0e11e7d705716f01f1bfd10232f7d21bda38d630c3fbe409b13a9/pyobjc_framework_screencapturekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "be210ea5df36c1392425c026c59c5e0797b0d6e07ee9551d032e40bed95d2833"
    else
      url "https://files.pythonhosted.org/packages/be/b4/881e2ff0e11e7d705716f01f1bfd10232f7d21bda38d630c3fbe409b13a9/pyobjc_framework_screencapturekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "be210ea5df36c1392425c026c59c5e0797b0d6e07ee9551d032e40bed95d2833"
    end
  end
  resource "pyobjc-framework-ScreenSaver" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c6/97/2fab7dfb449ccc49fb617ade97bfa35689572c71fff5885ea25705479a30/pyobjc_framework_screensaver-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4744a01043a9c6b464f6a2230948812bf88bdd68f084b6f05b475b93093c3ea9"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c6/97/2fab7dfb449ccc49fb617ade97bfa35689572c71fff5885ea25705479a30/pyobjc_framework_screensaver-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4744a01043a9c6b464f6a2230948812bf88bdd68f084b6f05b475b93093c3ea9"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c6/97/2fab7dfb449ccc49fb617ade97bfa35689572c71fff5885ea25705479a30/pyobjc_framework_screensaver-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4744a01043a9c6b464f6a2230948812bf88bdd68f084b6f05b475b93093c3ea9"
    else
      url "https://files.pythonhosted.org/packages/c6/97/2fab7dfb449ccc49fb617ade97bfa35689572c71fff5885ea25705479a30/pyobjc_framework_screensaver-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4744a01043a9c6b464f6a2230948812bf88bdd68f084b6f05b475b93093c3ea9"
    end
  end
  resource "pyobjc-framework-ScreenTime" do
    url "https://files.pythonhosted.org/packages/27/06/904174de6170e11b53673cc5844e5f13394eeeed486e0bcdf5288c1b0853/pyobjc_framework_screentime-12.1-py2.py3-none-any.whl"
    sha256 "d34a068ec8ba2704987fcd05c37c9a9392de61d92933e6e71c8e4eaa4dfce029"
  end
  resource "pyobjc-framework-ScriptingBridge" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/b1/bc/5f1d372bb1efa9cf1e3218e1831136f5548b9f5b12a4a6676bf8b37cca63/pyobjc_framework_scriptingbridge-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "48f4bc33b2cab6634f58f37549096bda9ec7d3ec664b4b40e7d3248d9f481f69"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/b1/bc/5f1d372bb1efa9cf1e3218e1831136f5548b9f5b12a4a6676bf8b37cca63/pyobjc_framework_scriptingbridge-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "48f4bc33b2cab6634f58f37549096bda9ec7d3ec664b4b40e7d3248d9f481f69"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/b1/bc/5f1d372bb1efa9cf1e3218e1831136f5548b9f5b12a4a6676bf8b37cca63/pyobjc_framework_scriptingbridge-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "48f4bc33b2cab6634f58f37549096bda9ec7d3ec664b4b40e7d3248d9f481f69"
    else
      url "https://files.pythonhosted.org/packages/b1/bc/5f1d372bb1efa9cf1e3218e1831136f5548b9f5b12a4a6676bf8b37cca63/pyobjc_framework_scriptingbridge-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "48f4bc33b2cab6634f58f37549096bda9ec7d3ec664b4b40e7d3248d9f481f69"
    end
  end
  resource "pyobjc-framework-SearchKit" do
    url "https://files.pythonhosted.org/packages/72/46/4f9cd3011f47b43b21b2924ab3770303c3f0a4d16f05550d38c5fcb42e78/pyobjc_framework_searchkit-12.1-py2.py3-none-any.whl"
    sha256 "844ce62b7296b19da8db7dedd539d07f7b3fb3bb8b029c261f7bcf0e01a97758"
  end
  resource "pyobjc-framework-Security" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/66/4d/63c15f9449c191e7448a05ff8af4a82c39a51bb627bc96dc9697586c0f79/pyobjc_framework_security-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6319a34508fd87ab6ca3cda6f54e707196197a65b792b292705af967e225438a"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/66/4d/63c15f9449c191e7448a05ff8af4a82c39a51bb627bc96dc9697586c0f79/pyobjc_framework_security-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6319a34508fd87ab6ca3cda6f54e707196197a65b792b292705af967e225438a"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/66/4d/63c15f9449c191e7448a05ff8af4a82c39a51bb627bc96dc9697586c0f79/pyobjc_framework_security-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6319a34508fd87ab6ca3cda6f54e707196197a65b792b292705af967e225438a"
    else
      url "https://files.pythonhosted.org/packages/66/4d/63c15f9449c191e7448a05ff8af4a82c39a51bb627bc96dc9697586c0f79/pyobjc_framework_security-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6319a34508fd87ab6ca3cda6f54e707196197a65b792b292705af967e225438a"
    end
  end
  resource "pyobjc-framework-SecurityFoundation" do
    url "https://files.pythonhosted.org/packages/93/1e/349fb71a413b37b1b41e712c7ca180df82144478f8a9a59497d66d0f2ea2/pyobjc_framework_securityfoundation-12.1-py2.py3-none-any.whl"
    sha256 "579cf23e63434226f78ffe0afb8426e971009588e4ad812c478d47dfd558201c"
  end
  resource "pyobjc-framework-SecurityInterface" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/8e/df/c6b30b5eb671755d6d59baa34c406d38524eef309886b6a7d9b7a05eb00a/pyobjc_framework_securityinterface-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "153632d23b0235faa56d26d5641e585542dac6b13b0d7b152cca27655405dec4"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/8e/df/c6b30b5eb671755d6d59baa34c406d38524eef309886b6a7d9b7a05eb00a/pyobjc_framework_securityinterface-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "153632d23b0235faa56d26d5641e585542dac6b13b0d7b152cca27655405dec4"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/8e/df/c6b30b5eb671755d6d59baa34c406d38524eef309886b6a7d9b7a05eb00a/pyobjc_framework_securityinterface-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "153632d23b0235faa56d26d5641e585542dac6b13b0d7b152cca27655405dec4"
    else
      url "https://files.pythonhosted.org/packages/8e/df/c6b30b5eb671755d6d59baa34c406d38524eef309886b6a7d9b7a05eb00a/pyobjc_framework_securityinterface-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "153632d23b0235faa56d26d5641e585542dac6b13b0d7b152cca27655405dec4"
    end
  end
  resource "pyobjc-framework-SecurityUI" do
    url "https://files.pythonhosted.org/packages/36/7f/eff9ffdd34511cc95a60e5bd62f1cfbcbcec1a5012ef1168161506628c87/pyobjc_framework_securityui-12.1-py2.py3-none-any.whl"
    sha256 "3e988b83c9a2bb0393207eaa030fc023a8708a975ac5b8ea0508cdafc2b60705"
  end
  resource "pyobjc-framework-SensitiveContentAnalysis" do
    url "https://files.pythonhosted.org/packages/95/23/c99568a0d4e38bd8337d52e4ae25a0b0bd540577f2e06f3430c951d73209/pyobjc_framework_sensitivecontentanalysis-12.1-py2.py3-none-any.whl"
    sha256 "faf19d32d4599ac2b18fb1ccdc3e33b2b242bdf34c02e69978bd62d3643ad068"
  end
  resource "pyobjc-framework-ServiceManagement" do
    url "https://files.pythonhosted.org/packages/ee/5d/1009c32189f9cb26da0124b4a60640ed26dd8ad453810594f0cbfab0ff70/pyobjc_framework_servicemanagement-12.1-py2.py3-none-any.whl"
    sha256 "9a2941f16eeb71e55e1cd94f50197f91520778c7f48ad896761f5e78725cc08f"
  end
  resource "pyobjc-framework-SharedWithYou" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/1e/b0/eca22cf9ba67c8ba04a98f8a26af0a5ca16b40e05a8100b8209a153046b1/pyobjc_framework_sharedwithyou-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5a38bc6e3e0c9a36fe86e331eb16b680bab0024c897d252af1e611f0cd1087ef"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/1e/b0/eca22cf9ba67c8ba04a98f8a26af0a5ca16b40e05a8100b8209a153046b1/pyobjc_framework_sharedwithyou-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5a38bc6e3e0c9a36fe86e331eb16b680bab0024c897d252af1e611f0cd1087ef"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/1e/b0/eca22cf9ba67c8ba04a98f8a26af0a5ca16b40e05a8100b8209a153046b1/pyobjc_framework_sharedwithyou-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5a38bc6e3e0c9a36fe86e331eb16b680bab0024c897d252af1e611f0cd1087ef"
    else
      url "https://files.pythonhosted.org/packages/1e/b0/eca22cf9ba67c8ba04a98f8a26af0a5ca16b40e05a8100b8209a153046b1/pyobjc_framework_sharedwithyou-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5a38bc6e3e0c9a36fe86e331eb16b680bab0024c897d252af1e611f0cd1087ef"
    end
  end
  resource "pyobjc-framework-SharedWithYouCore" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/94/a1/24ffb35098a239a8804e469fcd7430eaee5e47bf0756c59cd77a66c3edff/pyobjc_framework_sharedwithyoucore-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ceb4c3ad7bc1c93b4cbbbab6404d3e32714c12c36fab2932c170946af83c548"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/94/a1/24ffb35098a239a8804e469fcd7430eaee5e47bf0756c59cd77a66c3edff/pyobjc_framework_sharedwithyoucore-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ceb4c3ad7bc1c93b4cbbbab6404d3e32714c12c36fab2932c170946af83c548"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/94/a1/24ffb35098a239a8804e469fcd7430eaee5e47bf0756c59cd77a66c3edff/pyobjc_framework_sharedwithyoucore-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ceb4c3ad7bc1c93b4cbbbab6404d3e32714c12c36fab2932c170946af83c548"
    else
      url "https://files.pythonhosted.org/packages/94/a1/24ffb35098a239a8804e469fcd7430eaee5e47bf0756c59cd77a66c3edff/pyobjc_framework_sharedwithyoucore-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ceb4c3ad7bc1c93b4cbbbab6404d3e32714c12c36fab2932c170946af83c548"
    end
  end
  resource "pyobjc-framework-ShazamKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/8d/79/09d4b2c121d3d3a662e19d67328904fd62a3303b7a169698d654a3493140/pyobjc_framework_shazamkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "951b989997a7c19d0c0d91a477d3d221ddb890085f3538ae3c520177c2322caa"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/8d/79/09d4b2c121d3d3a662e19d67328904fd62a3303b7a169698d654a3493140/pyobjc_framework_shazamkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "951b989997a7c19d0c0d91a477d3d221ddb890085f3538ae3c520177c2322caa"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/8d/79/09d4b2c121d3d3a662e19d67328904fd62a3303b7a169698d654a3493140/pyobjc_framework_shazamkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "951b989997a7c19d0c0d91a477d3d221ddb890085f3538ae3c520177c2322caa"
    else
      url "https://files.pythonhosted.org/packages/8d/79/09d4b2c121d3d3a662e19d67328904fd62a3303b7a169698d654a3493140/pyobjc_framework_shazamkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "951b989997a7c19d0c0d91a477d3d221ddb890085f3538ae3c520177c2322caa"
    end
  end
  resource "pyobjc-framework-Social" do
    url "https://files.pythonhosted.org/packages/f6/fb/090867e332d49a1e492e4b8972ac6034d1c7d17cf39f546077f35be58c46/pyobjc_framework_social-12.1-py2.py3-none-any.whl"
    sha256 "2f3b36ba5769503b1bc945f85fd7b255d42d7f6e417d78567507816502ff2b44"
  end
  resource "pyobjc-framework-SoundAnalysis" do
    url "https://files.pythonhosted.org/packages/53/d3/8df5183d52d20d459225d3f5d24f55e01b8cd9fe587ed972e3f20dd18709/pyobjc_framework_soundanalysis-12.1-py2.py3-none-any.whl"
    sha256 "8b2029ab48c1a9772f247f0aea995e8c3ff4706909002a9c1551722769343a52"
  end
  resource "pyobjc-framework-Speech" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/00/df/2af011d05b4ab008b1e9e4b8c71b730926ef8e9599aeb8220a898603580b/pyobjc_framework_speech-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a958b3ace1425cf9319f5d8ace920c2f3dac95a5a6d1bd8742d5b64d24671e30"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/00/df/2af011d05b4ab008b1e9e4b8c71b730926ef8e9599aeb8220a898603580b/pyobjc_framework_speech-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a958b3ace1425cf9319f5d8ace920c2f3dac95a5a6d1bd8742d5b64d24671e30"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/00/df/2af011d05b4ab008b1e9e4b8c71b730926ef8e9599aeb8220a898603580b/pyobjc_framework_speech-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a958b3ace1425cf9319f5d8ace920c2f3dac95a5a6d1bd8742d5b64d24671e30"
    else
      url "https://files.pythonhosted.org/packages/00/df/2af011d05b4ab008b1e9e4b8c71b730926ef8e9599aeb8220a898603580b/pyobjc_framework_speech-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a958b3ace1425cf9319f5d8ace920c2f3dac95a5a6d1bd8742d5b64d24671e30"
    end
  end
  resource "pyobjc-framework-SpriteKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/13/df/453d5885c79a1341e947c7654aa2c4c0cd6bed5cef4d1c16b26c58051d91/pyobjc_framework_spritekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5c9cb8f23436fc7bd0a8149f1271b307131a4c5669dfbb8302beef56cdca057f"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/13/df/453d5885c79a1341e947c7654aa2c4c0cd6bed5cef4d1c16b26c58051d91/pyobjc_framework_spritekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5c9cb8f23436fc7bd0a8149f1271b307131a4c5669dfbb8302beef56cdca057f"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/13/df/453d5885c79a1341e947c7654aa2c4c0cd6bed5cef4d1c16b26c58051d91/pyobjc_framework_spritekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5c9cb8f23436fc7bd0a8149f1271b307131a4c5669dfbb8302beef56cdca057f"
    else
      url "https://files.pythonhosted.org/packages/13/df/453d5885c79a1341e947c7654aa2c4c0cd6bed5cef4d1c16b26c58051d91/pyobjc_framework_spritekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5c9cb8f23436fc7bd0a8149f1271b307131a4c5669dfbb8302beef56cdca057f"
    end
  end
  resource "pyobjc-framework-StoreKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/6d/9b/3d510cc03d5aeef298356578aa8077e4ddebea0a0cd2f50a13bf4f98f9e8/pyobjc_framework_storekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5e9354f2373b243066358bf32988d07d8a2da6718563ee6946a40c981a37c7c1"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/6d/9b/3d510cc03d5aeef298356578aa8077e4ddebea0a0cd2f50a13bf4f98f9e8/pyobjc_framework_storekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5e9354f2373b243066358bf32988d07d8a2da6718563ee6946a40c981a37c7c1"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/6d/9b/3d510cc03d5aeef298356578aa8077e4ddebea0a0cd2f50a13bf4f98f9e8/pyobjc_framework_storekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5e9354f2373b243066358bf32988d07d8a2da6718563ee6946a40c981a37c7c1"
    else
      url "https://files.pythonhosted.org/packages/6d/9b/3d510cc03d5aeef298356578aa8077e4ddebea0a0cd2f50a13bf4f98f9e8/pyobjc_framework_storekit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "5e9354f2373b243066358bf32988d07d8a2da6718563ee6946a40c981a37c7c1"
    end
  end
  resource "pyobjc-framework-Symbols" do
    url "https://files.pythonhosted.org/packages/f0/ea/6e9af9c750d68109ac54fbffb5463e33a7b54ffe8b9901a5b6b603b7884b/pyobjc_framework_symbols-12.1-py2.py3-none-any.whl"
    sha256 "c72eecbc25f6bfcd39c733067276270057c5aca684be20fdc56def645f2b6446"
  end
  resource "pyobjc-framework-SyncServices" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/88/fa/f27f1a706a72c7a87a2aa37e49ae5f5e7445e02323218638e6ff5897c5c9/pyobjc_framework_syncservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2af99db7c23f0368300e8bd428ecfb75b14449d3467e883ff544dbc5ae9e1351"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/88/fa/f27f1a706a72c7a87a2aa37e49ae5f5e7445e02323218638e6ff5897c5c9/pyobjc_framework_syncservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2af99db7c23f0368300e8bd428ecfb75b14449d3467e883ff544dbc5ae9e1351"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/88/fa/f27f1a706a72c7a87a2aa37e49ae5f5e7445e02323218638e6ff5897c5c9/pyobjc_framework_syncservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2af99db7c23f0368300e8bd428ecfb75b14449d3467e883ff544dbc5ae9e1351"
    else
      url "https://files.pythonhosted.org/packages/88/fa/f27f1a706a72c7a87a2aa37e49ae5f5e7445e02323218638e6ff5897c5c9/pyobjc_framework_syncservices-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2af99db7c23f0368300e8bd428ecfb75b14449d3467e883ff544dbc5ae9e1351"
    end
  end
  resource "pyobjc-framework-SystemConfiguration" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/05/95/9fbb2ab26f03142b84ff577dcd2dcd3ca8b0c13c2f6193ceecd20544b7a5/pyobjc_framework_systemconfiguration-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e9c597c13b9815dce7e1fccdfae7c66b9df98e8c688b7afdf4af39de26d917b3"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/05/95/9fbb2ab26f03142b84ff577dcd2dcd3ca8b0c13c2f6193ceecd20544b7a5/pyobjc_framework_systemconfiguration-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e9c597c13b9815dce7e1fccdfae7c66b9df98e8c688b7afdf4af39de26d917b3"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/05/95/9fbb2ab26f03142b84ff577dcd2dcd3ca8b0c13c2f6193ceecd20544b7a5/pyobjc_framework_systemconfiguration-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e9c597c13b9815dce7e1fccdfae7c66b9df98e8c688b7afdf4af39de26d917b3"
    else
      url "https://files.pythonhosted.org/packages/05/95/9fbb2ab26f03142b84ff577dcd2dcd3ca8b0c13c2f6193ceecd20544b7a5/pyobjc_framework_systemconfiguration-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e9c597c13b9815dce7e1fccdfae7c66b9df98e8c688b7afdf4af39de26d917b3"
    end
  end
  resource "pyobjc-framework-SystemExtensions" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/af/c8/4e9669b6b43af7f50df43cb76af84805ee3a9b32881d69b4e7685edd3017/pyobjc_framework_systemextensions-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "51f0a4488fa245695c7e8c1c83909c86bf27b34519807437c753602ff6d7e9af"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/af/c8/4e9669b6b43af7f50df43cb76af84805ee3a9b32881d69b4e7685edd3017/pyobjc_framework_systemextensions-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "51f0a4488fa245695c7e8c1c83909c86bf27b34519807437c753602ff6d7e9af"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/af/c8/4e9669b6b43af7f50df43cb76af84805ee3a9b32881d69b4e7685edd3017/pyobjc_framework_systemextensions-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "51f0a4488fa245695c7e8c1c83909c86bf27b34519807437c753602ff6d7e9af"
    else
      url "https://files.pythonhosted.org/packages/af/c8/4e9669b6b43af7f50df43cb76af84805ee3a9b32881d69b4e7685edd3017/pyobjc_framework_systemextensions-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "51f0a4488fa245695c7e8c1c83909c86bf27b34519807437c753602ff6d7e9af"
    end
  end
  resource "pyobjc-framework-ThreadNetwork" do
    url "https://files.pythonhosted.org/packages/4f/b8/94b37dd353302c051a76f1a698cf55b5ad50ca061db7f0f332aa9e195766/pyobjc_framework_threadnetwork-12.1-py2.py3-none-any.whl"
    sha256 "07d937748fc54199f5ec04d5a408e8691a870481c11b641785c2adc279dd8e4b"
  end
  resource "pyobjc-framework-UniformTypeIdentifiers" do
    url "https://files.pythonhosted.org/packages/4e/5f/1f10f5275b06d213c9897850f1fca9c881c741c1f9190cea6db982b71824/pyobjc_framework_uniformtypeidentifiers-12.1-py2.py3-none-any.whl"
    sha256 "ec5411e39152304d2a7e0e426c3058fa37a00860af64e164794e0bcffee813f2"
  end
  resource "pyobjc-framework-UserNotifications" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/cd/1a/caa96066b36c2c20ba6f033857fc24ff8e6b5811cf1bc112818928d27216/pyobjc_framework_usernotifications-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "cc69e2aed9b55296a447f2fb69cc52a1a026c50e46253dbf482f5807bce3ae7c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/cd/1a/caa96066b36c2c20ba6f033857fc24ff8e6b5811cf1bc112818928d27216/pyobjc_framework_usernotifications-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "cc69e2aed9b55296a447f2fb69cc52a1a026c50e46253dbf482f5807bce3ae7c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/cd/1a/caa96066b36c2c20ba6f033857fc24ff8e6b5811cf1bc112818928d27216/pyobjc_framework_usernotifications-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "cc69e2aed9b55296a447f2fb69cc52a1a026c50e46253dbf482f5807bce3ae7c"
    else
      url "https://files.pythonhosted.org/packages/cd/1a/caa96066b36c2c20ba6f033857fc24ff8e6b5811cf1bc112818928d27216/pyobjc_framework_usernotifications-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "cc69e2aed9b55296a447f2fb69cc52a1a026c50e46253dbf482f5807bce3ae7c"
    end
  end
  resource "pyobjc-framework-UserNotificationsUI" do
    url "https://files.pythonhosted.org/packages/23/c8/52ac8a879079c1fbf25de8335ff506f7db87ff61e64838b20426f817f5d5/pyobjc_framework_usernotificationsui-12.1-py2.py3-none-any.whl"
    sha256 "11af59dc5abfcb72c08769ab4d7ca32a628527a8ba341786431a0d2dacf31605"
  end
  resource "pyobjc-framework-VideoSubscriberAccount" do
    url "https://files.pythonhosted.org/packages/41/ca/e2f982916267508c1594f1e50d27bf223a24f55a5e175ab7d7822a00997c/pyobjc_framework_videosubscriberaccount-12.1-py2.py3-none-any.whl"
    sha256 "381a5e8a3016676e52b88e38b706559fa09391d33474d8a8a52f20a883104a7b"
  end
  resource "pyobjc-framework-VideoToolbox" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/00/a9/581edc658e3ae242a55d463092a237cf9f744ba5a91d91c769af7d3f2ac6/pyobjc_framework_videotoolbox-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e67a3890916346b7c15c9270d247e191c3899e4698fee79d460a476145715401"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/00/a9/581edc658e3ae242a55d463092a237cf9f744ba5a91d91c769af7d3f2ac6/pyobjc_framework_videotoolbox-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e67a3890916346b7c15c9270d247e191c3899e4698fee79d460a476145715401"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/00/a9/581edc658e3ae242a55d463092a237cf9f744ba5a91d91c769af7d3f2ac6/pyobjc_framework_videotoolbox-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e67a3890916346b7c15c9270d247e191c3899e4698fee79d460a476145715401"
    else
      url "https://files.pythonhosted.org/packages/00/a9/581edc658e3ae242a55d463092a237cf9f744ba5a91d91c769af7d3f2ac6/pyobjc_framework_videotoolbox-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e67a3890916346b7c15c9270d247e191c3899e4698fee79d460a476145715401"
    end
  end
  resource "pyobjc-framework-Virtualization" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/72/4f/ed32bb177edca9feedd518aa2f98c75e86365497f086af21d807785d264c/pyobjc_framework_virtualization-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e40bff972adfefbe8a02e508571b32c58e90e4d974d65470eab75c53fe47006d"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/72/4f/ed32bb177edca9feedd518aa2f98c75e86365497f086af21d807785d264c/pyobjc_framework_virtualization-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e40bff972adfefbe8a02e508571b32c58e90e4d974d65470eab75c53fe47006d"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/72/4f/ed32bb177edca9feedd518aa2f98c75e86365497f086af21d807785d264c/pyobjc_framework_virtualization-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e40bff972adfefbe8a02e508571b32c58e90e4d974d65470eab75c53fe47006d"
    else
      url "https://files.pythonhosted.org/packages/72/4f/ed32bb177edca9feedd518aa2f98c75e86365497f086af21d807785d264c/pyobjc_framework_virtualization-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e40bff972adfefbe8a02e508571b32c58e90e4d974d65470eab75c53fe47006d"
    end
  end
  resource "pyobjc-framework-Vision" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a7/a4/ee1ef14d6e1df6617e64dbaaa0ecf8ecb9e0af1425613fa633f6a94049c1/pyobjc_framework_vision-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "631add775ed1dafb221a6116137cdcd78432addc16200ca434571c2a039c0e03"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/a7/a4/ee1ef14d6e1df6617e64dbaaa0ecf8ecb9e0af1425613fa633f6a94049c1/pyobjc_framework_vision-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "631add775ed1dafb221a6116137cdcd78432addc16200ca434571c2a039c0e03"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/a7/a4/ee1ef14d6e1df6617e64dbaaa0ecf8ecb9e0af1425613fa633f6a94049c1/pyobjc_framework_vision-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "631add775ed1dafb221a6116137cdcd78432addc16200ca434571c2a039c0e03"
    else
      url "https://files.pythonhosted.org/packages/a7/a4/ee1ef14d6e1df6617e64dbaaa0ecf8ecb9e0af1425613fa633f6a94049c1/pyobjc_framework_vision-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "631add775ed1dafb221a6116137cdcd78432addc16200ca434571c2a039c0e03"
    end
  end
  resource "pyobjc-framework-WebKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/3b/ac/924878f239c167ffe3bfc643aee4d6dd5b357e25f6b28db227e40e9e6df3/pyobjc_framework_webkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "99d0d28542a266a95ee2585f51765c0331794bca461aaf4d1f5091489d475179"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/3b/ac/924878f239c167ffe3bfc643aee4d6dd5b357e25f6b28db227e40e9e6df3/pyobjc_framework_webkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "99d0d28542a266a95ee2585f51765c0331794bca461aaf4d1f5091489d475179"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/3b/ac/924878f239c167ffe3bfc643aee4d6dd5b357e25f6b28db227e40e9e6df3/pyobjc_framework_webkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "99d0d28542a266a95ee2585f51765c0331794bca461aaf4d1f5091489d475179"
    else
      url "https://files.pythonhosted.org/packages/3b/ac/924878f239c167ffe3bfc643aee4d6dd5b357e25f6b28db227e40e9e6df3/pyobjc_framework_webkit-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "99d0d28542a266a95ee2585f51765c0331794bca461aaf4d1f5091489d475179"
    end
  end
  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end
  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/16/e1/3079a9ff9b8e11b846c6ac5c8b5bfb7ff225eee721825310c91b3b50304f/tqdm-4.67.3-py3-none-any.whl"
    sha256 "ee1e4c0e59148062281c49d80b25b67771a127c85fc9676d3be5f243206826bf"
  end
  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end
  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  def install
    if OS.mac?
      ENV.append "LDFLAGS", "-Wl,-headerpad_max_install_names"
      ENV.append "RUSTFLAGS", "-C link-arg=-Wl,-headerpad_max_install_names"
    end

    venv = virtualenv_create(libexec, "python3.14")

    resource("annotated-types").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("anyio").stage do
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

    resource("distro").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("h11").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("httpcore").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("httpx").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
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

    resource("jiter").stage do
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

    resource("openai").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
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

    resource("pydantic").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pydantic-core").stage do
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

    resource("pyobjc").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-core").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Accessibility").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Accounts").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AddressBook").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AdServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AdSupport").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AppleScriptKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AppleScriptObjC").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ApplicationServices").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AppTrackingTransparency").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ARKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AudioVideoBridging").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AuthenticationServices").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AutomaticAssessmentConfiguration").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Automator").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AVFoundation").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AVKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AVRouting").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-BackgroundAssets").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-BrowserEngineKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-BusinessChat").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CalendarStore").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CallKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Carbon").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CFNetwork").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Cinematic").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ClassKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CloudKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Cocoa").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Collaboration").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ColorSync").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CompositorServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Contacts").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ContactsUI").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreAudio").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreAudioKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreBluetooth").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreData").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreHaptics").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreLocation").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreMedia").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreMediaIO").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreMIDI").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreML").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreMotion").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreServices").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreSpotlight").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreText").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreWLAN").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CryptoTokenKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DataDetection").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DeviceCheck").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DeviceDiscoveryExtension").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DictionaryServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DiscRecording").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DiscRecordingUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DiskArbitration").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DVDPlayback").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-EventKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ExceptionHandling").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ExecutionPolicy").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ExtensionKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ExternalAccessory").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-FileProvider").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-FileProviderUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-FinderSync").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-FSEvents").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-FSKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-GameCenter").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-GameController").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-GameKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-GameplayKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-GameSave").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-HealthKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ImageCaptureCore").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-InputMethodKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-InstallerPlugins").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-InstantMessage").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Intents").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-IntentsUI").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-IOBluetooth").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-IOBluetoothUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-IOSurface").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-iTunesLibrary").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-KernelManagement").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-LatentSemanticMapping").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-LaunchServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-libdispatch").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-libxpc").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-LinkPresentation").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-LocalAuthentication").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-LocalAuthenticationEmbeddedUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MailKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MapKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MediaAccessibility").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MediaExtension").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MediaLibrary").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MediaPlayer").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MediaToolbox").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Metal").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MetalFX").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MetalKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MetalPerformanceShaders").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MetalPerformanceShadersGraph").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MetricKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MLCompute").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ModelIO").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MultipeerConnectivity").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-NaturalLanguage").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-NetFS").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Network").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-NetworkExtension").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-NotificationCenter").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-OpenDirectory").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-OSAKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-OSLog").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PassKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PencilKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PHASE").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Photos").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PhotosUI").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PreferencePanes").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PushKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Quartz").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-QuickLookThumbnailing").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ReplayKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SafariServices").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SafetyKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SceneKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ScreenCaptureKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ScreenSaver").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ScreenTime").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ScriptingBridge").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SearchKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Security").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SecurityFoundation").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SecurityInterface").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SecurityUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SensitiveContentAnalysis").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ServiceManagement").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SharedWithYou").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SharedWithYouCore").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ShazamKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Social").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SoundAnalysis").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Speech").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SpriteKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-StoreKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Symbols").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SyncServices").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SystemConfiguration").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SystemExtensions").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ThreadNetwork").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-UniformTypeIdentifiers").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-UserNotifications").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-UserNotificationsUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-VideoSubscriberAccount").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-VideoToolbox").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Virtualization").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Vision").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-WebKit").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("sniffio").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("tqdm").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("typing-extensions").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("typing-inspection").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/ggai"
  end

  test do
    system "#{bin}/ggai", "--help"
  end
end
