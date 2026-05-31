class Ggai < Formula
  include Language::Python::Virtualenv

  desc "Helper for GeoGuessr training using OpenAI"
  homepage "https://github.com/rioriost/ggai"
  url "https://github.com/rioriost/ggai/releases/download/0.5.13/ggai-0.5.13.tar.gz"
  sha256 "046cfa282d87d80d0449b1d01f5735370a1eaf39aad2138f59635869d5624d11"
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
    url "https://files.pythonhosted.org/packages/59/8c/57e832b7af6d7c5abe66eb3fbe3a3a32f4d11ea23a1aa7131371035be991/certifi-2026.5.20-py3-none-any.whl"
    sha256 "3c52e209ba0a4ad7aebe60436a4ab349c39e1e602e8c134221e546902ad25897"
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
    url "https://files.pythonhosted.org/packages/de/a7/f76514cc40ad6234098ecdebda08732d75964776c51a42845b7da10649e2/idna-3.17-py3-none-any.whl"
    sha256 "466e48829084efe2548012b855df21540b96f2e20e51bd124c851536556a592c"
  end
  resource "jiter" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/04/4e/a2c30a7f69b48c03b20935d647479106fe932f6e63f75faf53937197e05d/jiter-0.15.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "01a8222cf05ab1128e239421156c207949808acaaea2bdfd33130ae666786e86"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/eb/d2/079f350ebf7859d081de30aa890f9e3be68516f754f3ba32366ffff4dcee/jiter-0.15.0-cp314-cp314-macosx_10_12_x86_64.whl"
      sha256 "ac0d9ddea4350974be7a221fc25895f251a8fee748c889bdced2141c0fec1a49"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/60/28/edcfbbbf0cb15436f36664a8908a0df47ab9006298d4cd937dc08ea932d6/jiter-0.15.0-cp314-cp314-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "90c5db5527c221249a876160663ab891ace358c17f7b9c93ec1478b7f0550e5c"
    else
      url "https://files.pythonhosted.org/packages/04/4e/a2c30a7f69b48c03b20935d647479106fe932f6e63f75faf53937197e05d/jiter-0.15.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "01a8222cf05ab1128e239421156c207949808acaaea2bdfd33130ae666786e86"
    end
  end
  resource "openai" do
    url "https://files.pythonhosted.org/packages/0a/bf/ccff9be562e24207716d04ef9dc931c76aff0c89a7265da43e2104d7fe06/openai-2.38.0-py3-none-any.whl"
    sha256 "ec6661c57b2dcc47414a767e6e3335c7ed3d19c9696999283a3c82e95c756a3c"
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
    url "https://files.pythonhosted.org/packages/fd/7b/122376b1fd3c62c1ed9dc80c931ace4844b3c55407b6fb2d199377c9736f/pydantic-2.13.4-py3-none-any.whl"
    sha256 "45a282cde31d808236fd7ea9d919b128653c8b38b393d1c4ab335c62924d9aba"
  end
  resource "pydantic-core" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ad/1f/8970b150a4b4365623ae00fc88603491f763c627311ae8031e3111356d6e/pydantic_core-2.46.4-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "23ace664830ee0bfe014a0c7bc248b1f7f25ed7ad103852c317624a1083af462"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/8d/74/228a26ddad29c6672b805d9fd78e8d251cd04004fa7eed0e622096cd0250/pydantic_core-2.46.4-cp314-cp314-macosx_10_12_x86_64.whl"
      sha256 "428e04521a40150c85216fc8b85e8d39fece235a9cf5e383761238c7fa9b96fb"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/89/1d/8eff589b45bb8190a9d12c49cfad0f176a5cbd1534908a6b5125e2886239/pydantic_core-2.46.4-cp314-cp314-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "7a5f930472650a82629163023e630d160863fce524c616f4e5186e5de9d9a49b"
    else
      url "https://files.pythonhosted.org/packages/ad/1f/8970b150a4b4365623ae00fc88603491f763c627311ae8031e3111356d6e/pydantic_core-2.46.4-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "23ace664830ee0bfe014a0c7bc248b1f7f25ed7ad103852c317624a1083af462"
    end
  end
  resource "pyobjc" do
    url "https://files.pythonhosted.org/packages/bf/25/f988de6a2028550fbd79f386938c4d99ac0f6b7652ad212cd8b74654924c/pyobjc-12.2-py3-none-any.whl"
    sha256 "f3b0d4cdb7d0be242a37ff27c9f0b3ef182fe8ebdbac6ae0c40ef87539fe7d77"
  end
  resource "pyobjc-core" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/2e/b2/ecfbd0c80e7688ed6f3db23414758443c69c3a9d318f2036e26530ede955/pyobjc_core-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a51352e478785cd7fce1604b9902125a286139caea0759cb340e59d75b594992"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/2e/b2/ecfbd0c80e7688ed6f3db23414758443c69c3a9d318f2036e26530ede955/pyobjc_core-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a51352e478785cd7fce1604b9902125a286139caea0759cb340e59d75b594992"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/2e/b2/ecfbd0c80e7688ed6f3db23414758443c69c3a9d318f2036e26530ede955/pyobjc_core-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a51352e478785cd7fce1604b9902125a286139caea0759cb340e59d75b594992"
    else
      url "https://files.pythonhosted.org/packages/2e/b2/ecfbd0c80e7688ed6f3db23414758443c69c3a9d318f2036e26530ede955/pyobjc_core-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a51352e478785cd7fce1604b9902125a286139caea0759cb340e59d75b594992"
    end
  end
  resource "pyobjc-framework-Accessibility" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e1/68/898391808390d55e38d97ba9bf975e5cd9f64692c051d290ee8f366269cf/pyobjc_framework_accessibility-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a6b1bcadaee86389775288a2f44658fa6a5b150ecb8bd3ff694ed9a0c2a62e7d"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e1/68/898391808390d55e38d97ba9bf975e5cd9f64692c051d290ee8f366269cf/pyobjc_framework_accessibility-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a6b1bcadaee86389775288a2f44658fa6a5b150ecb8bd3ff694ed9a0c2a62e7d"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e1/68/898391808390d55e38d97ba9bf975e5cd9f64692c051d290ee8f366269cf/pyobjc_framework_accessibility-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a6b1bcadaee86389775288a2f44658fa6a5b150ecb8bd3ff694ed9a0c2a62e7d"
    else
      url "https://files.pythonhosted.org/packages/e1/68/898391808390d55e38d97ba9bf975e5cd9f64692c051d290ee8f366269cf/pyobjc_framework_accessibility-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a6b1bcadaee86389775288a2f44658fa6a5b150ecb8bd3ff694ed9a0c2a62e7d"
    end
  end
  resource "pyobjc-framework-Accounts" do
    url "https://files.pythonhosted.org/packages/b2/fa/61661645bdc59e6aa9c92791731d688c76b84260362849f8c768e48558ea/pyobjc_framework_accounts-12.2-py2.py3-none-any.whl"
    sha256 "a1638b7758e6371f59e7ea9f912922530062ce9640a0f1d1e66a0702bff7f8e3"
  end
  resource "pyobjc-framework-AddressBook" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/6a/2d/4bbd5dc76233c3c1ad4529536b3c47fd7c20faaa88a915f509baaea1050c/pyobjc_framework_addressbook-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6ea77ba8de1ffa9a05836081bd36ec3828cadc0215f1fcd64446b80228e69775"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/6a/2d/4bbd5dc76233c3c1ad4529536b3c47fd7c20faaa88a915f509baaea1050c/pyobjc_framework_addressbook-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6ea77ba8de1ffa9a05836081bd36ec3828cadc0215f1fcd64446b80228e69775"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/6a/2d/4bbd5dc76233c3c1ad4529536b3c47fd7c20faaa88a915f509baaea1050c/pyobjc_framework_addressbook-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6ea77ba8de1ffa9a05836081bd36ec3828cadc0215f1fcd64446b80228e69775"
    else
      url "https://files.pythonhosted.org/packages/6a/2d/4bbd5dc76233c3c1ad4529536b3c47fd7c20faaa88a915f509baaea1050c/pyobjc_framework_addressbook-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6ea77ba8de1ffa9a05836081bd36ec3828cadc0215f1fcd64446b80228e69775"
    end
  end
  resource "pyobjc-framework-AdServices" do
    url "https://files.pythonhosted.org/packages/53/2b/230ad0f52e7f960a560afbae80dacdfc831a01a3507989e1ee41755ab793/pyobjc_framework_adservices-12.2-py2.py3-none-any.whl"
    sha256 "7c1b1f78689f66fa724c23fd20dac56e8ea3190e868d9859d08294a58e26cb33"
  end
  resource "pyobjc-framework-AdSupport" do
    url "https://files.pythonhosted.org/packages/29/b7/956f2d841a8709ab7cae6726dcd953a54650768f9b78cf9821fb732c6cca/pyobjc_framework_adsupport-12.2-py2.py3-none-any.whl"
    sha256 "39ca7e3c336c32c5d9d5780eba7606f4d53034bb53bc7b55c8a5a2e430ad7c66"
  end
  resource "pyobjc-framework-AppleScriptKit" do
    url "https://files.pythonhosted.org/packages/45/2b/3abd0d61208205b5617590e6c9cc35f744a41a2bdb81b5e18eba7810b9ae/pyobjc_framework_applescriptkit-12.2-py2.py3-none-any.whl"
    sha256 "4b2a2f02e159c3c13834c3a605c1445563592f41d57ef6cdca2bd39e6409270d"
  end
  resource "pyobjc-framework-AppleScriptObjC" do
    url "https://files.pythonhosted.org/packages/6b/a8/bb375c57509a1553e5ee51758caad3f946a98180577680b33a509f65bd9f/pyobjc_framework_applescriptobjc-12.2-py2.py3-none-any.whl"
    sha256 "0a3019b16959dd8bef9fb581894901e89e027fa0b8b21b8515deda13a3cd9b34"
  end
  resource "pyobjc-framework-ApplicationServices" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c6/60/43c4e2697971bb9ec7766d6fe00861ef2055f3fa7d733c407676fcd5cbac/pyobjc_framework_applicationservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d157ace1d768665f180cf9711fb31ddb29006e5df545e7e3ebf2be5054c6170d"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c6/60/43c4e2697971bb9ec7766d6fe00861ef2055f3fa7d733c407676fcd5cbac/pyobjc_framework_applicationservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d157ace1d768665f180cf9711fb31ddb29006e5df545e7e3ebf2be5054c6170d"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c6/60/43c4e2697971bb9ec7766d6fe00861ef2055f3fa7d733c407676fcd5cbac/pyobjc_framework_applicationservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d157ace1d768665f180cf9711fb31ddb29006e5df545e7e3ebf2be5054c6170d"
    else
      url "https://files.pythonhosted.org/packages/c6/60/43c4e2697971bb9ec7766d6fe00861ef2055f3fa7d733c407676fcd5cbac/pyobjc_framework_applicationservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d157ace1d768665f180cf9711fb31ddb29006e5df545e7e3ebf2be5054c6170d"
    end
  end
  resource "pyobjc-framework-AppTrackingTransparency" do
    url "https://files.pythonhosted.org/packages/3a/65/1a2b950fb8c7c98ee6ab894e5466094039846ff10986ceb04d4c29ce3118/pyobjc_framework_apptrackingtransparency-12.2-py2.py3-none-any.whl"
    sha256 "f0b51c30dc8c32882aa88e891ec13e52a0b339a3bb52ab7eed162a9640b76b4a"
  end
  resource "pyobjc-framework-ARKit" do
    url "https://files.pythonhosted.org/packages/83/cf/7fc4248af3c7ef766137ffa831dbe999efeaef48df108e62d35099aa6b5e/pyobjc_framework_arkit-12.2-py2.py3-none-any.whl"
    sha256 "6a8065f5e49c6efddfa9250f14845b5a5fc0cada5444a87d1f96fcf72ac71f19"
  end
  resource "pyobjc-framework-AudioVideoBridging" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c8/75/2aa2210ee0892a2076c58918f9ee53f5c9f62fd5f9b70b4a2e5a56384a1a/pyobjc_framework_audiovideobridging-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d439e659e732b5da958543a2979a7c518374aa2fa2009dccc5bc823043e0f647"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c8/75/2aa2210ee0892a2076c58918f9ee53f5c9f62fd5f9b70b4a2e5a56384a1a/pyobjc_framework_audiovideobridging-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d439e659e732b5da958543a2979a7c518374aa2fa2009dccc5bc823043e0f647"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c8/75/2aa2210ee0892a2076c58918f9ee53f5c9f62fd5f9b70b4a2e5a56384a1a/pyobjc_framework_audiovideobridging-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d439e659e732b5da958543a2979a7c518374aa2fa2009dccc5bc823043e0f647"
    else
      url "https://files.pythonhosted.org/packages/c8/75/2aa2210ee0892a2076c58918f9ee53f5c9f62fd5f9b70b4a2e5a56384a1a/pyobjc_framework_audiovideobridging-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d439e659e732b5da958543a2979a7c518374aa2fa2009dccc5bc823043e0f647"
    end
  end
  resource "pyobjc-framework-AuthenticationServices" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/0e/95/bfec54f879d12fb78a035923f9d26e08d7d16fd03a8f3c9d2ca56223525b/pyobjc_framework_authenticationservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "62b4fd6303ff3476637d006b4dfef0814f6e163693901f6e66b4d2102f9febf7"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/0e/95/bfec54f879d12fb78a035923f9d26e08d7d16fd03a8f3c9d2ca56223525b/pyobjc_framework_authenticationservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "62b4fd6303ff3476637d006b4dfef0814f6e163693901f6e66b4d2102f9febf7"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/0e/95/bfec54f879d12fb78a035923f9d26e08d7d16fd03a8f3c9d2ca56223525b/pyobjc_framework_authenticationservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "62b4fd6303ff3476637d006b4dfef0814f6e163693901f6e66b4d2102f9febf7"
    else
      url "https://files.pythonhosted.org/packages/0e/95/bfec54f879d12fb78a035923f9d26e08d7d16fd03a8f3c9d2ca56223525b/pyobjc_framework_authenticationservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "62b4fd6303ff3476637d006b4dfef0814f6e163693901f6e66b4d2102f9febf7"
    end
  end
  resource "pyobjc-framework-AutomaticAssessmentConfiguration" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/78/80/05090a15011ad969ac8ee5565a77980b4cc35dfdfa8bd69b0ac714ffd4f2/pyobjc_framework_automaticassessmentconfiguration-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3157826b9a7325433635cec279724c995f93dc09a64a46acc7ec26b25b9cd7c4"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/78/80/05090a15011ad969ac8ee5565a77980b4cc35dfdfa8bd69b0ac714ffd4f2/pyobjc_framework_automaticassessmentconfiguration-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3157826b9a7325433635cec279724c995f93dc09a64a46acc7ec26b25b9cd7c4"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/78/80/05090a15011ad969ac8ee5565a77980b4cc35dfdfa8bd69b0ac714ffd4f2/pyobjc_framework_automaticassessmentconfiguration-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3157826b9a7325433635cec279724c995f93dc09a64a46acc7ec26b25b9cd7c4"
    else
      url "https://files.pythonhosted.org/packages/78/80/05090a15011ad969ac8ee5565a77980b4cc35dfdfa8bd69b0ac714ffd4f2/pyobjc_framework_automaticassessmentconfiguration-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3157826b9a7325433635cec279724c995f93dc09a64a46acc7ec26b25b9cd7c4"
    end
  end
  resource "pyobjc-framework-Automator" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c4/40/6db933f50cbeec6c5665c38d5442d9ed0cea59981d6295e0cb4a25d04331/pyobjc_framework_automator-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "349b7d02f898bf16edbadf5212758d5bac89440de9bd00edfd28c302bef8bf1e"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c4/40/6db933f50cbeec6c5665c38d5442d9ed0cea59981d6295e0cb4a25d04331/pyobjc_framework_automator-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "349b7d02f898bf16edbadf5212758d5bac89440de9bd00edfd28c302bef8bf1e"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c4/40/6db933f50cbeec6c5665c38d5442d9ed0cea59981d6295e0cb4a25d04331/pyobjc_framework_automator-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "349b7d02f898bf16edbadf5212758d5bac89440de9bd00edfd28c302bef8bf1e"
    else
      url "https://files.pythonhosted.org/packages/c4/40/6db933f50cbeec6c5665c38d5442d9ed0cea59981d6295e0cb4a25d04331/pyobjc_framework_automator-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "349b7d02f898bf16edbadf5212758d5bac89440de9bd00edfd28c302bef8bf1e"
    end
  end
  resource "pyobjc-framework-AVFoundation" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/d0/5c/7c2a89266936fc2a99f50810a459ce054035956b07d4d9cc33e9abc5b7aa/pyobjc_framework_avfoundation-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6f03f0122e4f0b2add93f02d92bd7274abf09979116382c74f79715d33e6461d"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/d0/5c/7c2a89266936fc2a99f50810a459ce054035956b07d4d9cc33e9abc5b7aa/pyobjc_framework_avfoundation-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6f03f0122e4f0b2add93f02d92bd7274abf09979116382c74f79715d33e6461d"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/d0/5c/7c2a89266936fc2a99f50810a459ce054035956b07d4d9cc33e9abc5b7aa/pyobjc_framework_avfoundation-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6f03f0122e4f0b2add93f02d92bd7274abf09979116382c74f79715d33e6461d"
    else
      url "https://files.pythonhosted.org/packages/d0/5c/7c2a89266936fc2a99f50810a459ce054035956b07d4d9cc33e9abc5b7aa/pyobjc_framework_avfoundation-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6f03f0122e4f0b2add93f02d92bd7274abf09979116382c74f79715d33e6461d"
    end
  end
  resource "pyobjc-framework-AVKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/06/f6/5b226e18592b5b89419221509d37caedbd1f44ab9781c6abf9e9649ef9ba/pyobjc_framework_avkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "df3918f5f9bd687a6a6604dade8461a948c15fb8d755eb1aba21819271e822ea"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/06/f6/5b226e18592b5b89419221509d37caedbd1f44ab9781c6abf9e9649ef9ba/pyobjc_framework_avkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "df3918f5f9bd687a6a6604dade8461a948c15fb8d755eb1aba21819271e822ea"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/06/f6/5b226e18592b5b89419221509d37caedbd1f44ab9781c6abf9e9649ef9ba/pyobjc_framework_avkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "df3918f5f9bd687a6a6604dade8461a948c15fb8d755eb1aba21819271e822ea"
    else
      url "https://files.pythonhosted.org/packages/06/f6/5b226e18592b5b89419221509d37caedbd1f44ab9781c6abf9e9649ef9ba/pyobjc_framework_avkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "df3918f5f9bd687a6a6604dade8461a948c15fb8d755eb1aba21819271e822ea"
    end
  end
  resource "pyobjc-framework-AVRouting" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/11/c4/332d8a24c4bb5855eef4282d292763a3fe918d8630636e0dcf0e91c18115/pyobjc_framework_avrouting-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2e86f63fa45172d92ad653af5c9977d0b68e10b36441db0157a5485df8ca3430"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/11/c4/332d8a24c4bb5855eef4282d292763a3fe918d8630636e0dcf0e91c18115/pyobjc_framework_avrouting-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2e86f63fa45172d92ad653af5c9977d0b68e10b36441db0157a5485df8ca3430"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/11/c4/332d8a24c4bb5855eef4282d292763a3fe918d8630636e0dcf0e91c18115/pyobjc_framework_avrouting-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2e86f63fa45172d92ad653af5c9977d0b68e10b36441db0157a5485df8ca3430"
    else
      url "https://files.pythonhosted.org/packages/11/c4/332d8a24c4bb5855eef4282d292763a3fe918d8630636e0dcf0e91c18115/pyobjc_framework_avrouting-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2e86f63fa45172d92ad653af5c9977d0b68e10b36441db0157a5485df8ca3430"
    end
  end
  resource "pyobjc-framework-BackgroundAssets" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ae/59/1356179290082932330c18b05ef6b2b2ee8c9d2546e316d555925d67301c/pyobjc_framework_backgroundassets-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "79e68372eb311932bd59dbd98523b3ecf5b6c3490f074be734b41b88ae276ede"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ae/59/1356179290082932330c18b05ef6b2b2ee8c9d2546e316d555925d67301c/pyobjc_framework_backgroundassets-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "79e68372eb311932bd59dbd98523b3ecf5b6c3490f074be734b41b88ae276ede"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ae/59/1356179290082932330c18b05ef6b2b2ee8c9d2546e316d555925d67301c/pyobjc_framework_backgroundassets-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "79e68372eb311932bd59dbd98523b3ecf5b6c3490f074be734b41b88ae276ede"
    else
      url "https://files.pythonhosted.org/packages/ae/59/1356179290082932330c18b05ef6b2b2ee8c9d2546e316d555925d67301c/pyobjc_framework_backgroundassets-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "79e68372eb311932bd59dbd98523b3ecf5b6c3490f074be734b41b88ae276ede"
    end
  end
  resource "pyobjc-framework-BrowserEngineKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/72/c8/fee307a791f1315eecb4414429ba3b98f0571ca768ae5eb9cfea30c88087/pyobjc_framework_browserenginekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "87c2d039d7008ccc06b2bd8a4760d356a4d1f1cb267d680813919320e46e9202"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/72/c8/fee307a791f1315eecb4414429ba3b98f0571ca768ae5eb9cfea30c88087/pyobjc_framework_browserenginekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "87c2d039d7008ccc06b2bd8a4760d356a4d1f1cb267d680813919320e46e9202"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/72/c8/fee307a791f1315eecb4414429ba3b98f0571ca768ae5eb9cfea30c88087/pyobjc_framework_browserenginekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "87c2d039d7008ccc06b2bd8a4760d356a4d1f1cb267d680813919320e46e9202"
    else
      url "https://files.pythonhosted.org/packages/72/c8/fee307a791f1315eecb4414429ba3b98f0571ca768ae5eb9cfea30c88087/pyobjc_framework_browserenginekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "87c2d039d7008ccc06b2bd8a4760d356a4d1f1cb267d680813919320e46e9202"
    end
  end
  resource "pyobjc-framework-BusinessChat" do
    url "https://files.pythonhosted.org/packages/6b/19/5b9e89bf4c62bfe4ab844027f75786d171aee623fb4ca0c4dc46e67ffd7a/pyobjc_framework_businesschat-12.2-py2.py3-none-any.whl"
    sha256 "c96bceb6796f1fb82edafcda75d5abb59e165aa0f55a6e646638ab56d94ceaa3"
  end
  resource "pyobjc-framework-CalendarStore" do
    url "https://files.pythonhosted.org/packages/15/f7/356d958ef979f1dc7c01c0a94f0a0b0bf409919308b69e5eee750772f480/pyobjc_framework_calendarstore-12.2-py2.py3-none-any.whl"
    sha256 "cc9b0cee139d0552d8b924aca13c8ea3a51caa0e2bbf57540d84f249decd3846"
  end
  resource "pyobjc-framework-CallKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/43/7f/5723741b95b838230f833a98dd9795d49810b3986534b88addf3b8779b05/pyobjc_framework_callkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1548f4318427d392ba25296d84449980317a96e92ff01ad4ed77b11b69a8a5ac"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/43/7f/5723741b95b838230f833a98dd9795d49810b3986534b88addf3b8779b05/pyobjc_framework_callkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1548f4318427d392ba25296d84449980317a96e92ff01ad4ed77b11b69a8a5ac"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/43/7f/5723741b95b838230f833a98dd9795d49810b3986534b88addf3b8779b05/pyobjc_framework_callkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1548f4318427d392ba25296d84449980317a96e92ff01ad4ed77b11b69a8a5ac"
    else
      url "https://files.pythonhosted.org/packages/43/7f/5723741b95b838230f833a98dd9795d49810b3986534b88addf3b8779b05/pyobjc_framework_callkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1548f4318427d392ba25296d84449980317a96e92ff01ad4ed77b11b69a8a5ac"
    end
  end
  resource "pyobjc-framework-Carbon" do
    url "https://files.pythonhosted.org/packages/0c/6c/4600816c385ad52f748bf527c4ed15a15d51fb79770bb0a5d6642c4f49a3/pyobjc_framework_carbon-12.2-py2.py3-none-any.whl"
    sha256 "2420af5872473b91080b8000a50ab2e5053611dc68c094e257b75939f3fddef4"
  end
  resource "pyobjc-framework-CFNetwork" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/63/7d/74225d22d6b26d44f51add2e7a24ed26cd083d52daa165b8fcfe668cfe17/pyobjc_framework_cfnetwork-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "760e6dddbd91013c24161413cbb4e91f0161d20815473d66cf6eb1826d579306"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/63/7d/74225d22d6b26d44f51add2e7a24ed26cd083d52daa165b8fcfe668cfe17/pyobjc_framework_cfnetwork-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "760e6dddbd91013c24161413cbb4e91f0161d20815473d66cf6eb1826d579306"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/63/7d/74225d22d6b26d44f51add2e7a24ed26cd083d52daa165b8fcfe668cfe17/pyobjc_framework_cfnetwork-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "760e6dddbd91013c24161413cbb4e91f0161d20815473d66cf6eb1826d579306"
    else
      url "https://files.pythonhosted.org/packages/63/7d/74225d22d6b26d44f51add2e7a24ed26cd083d52daa165b8fcfe668cfe17/pyobjc_framework_cfnetwork-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "760e6dddbd91013c24161413cbb4e91f0161d20815473d66cf6eb1826d579306"
    end
  end
  resource "pyobjc-framework-Cinematic" do
    url "https://files.pythonhosted.org/packages/ca/b6/97ff3fa5efbd7b80d40ab5be590f92b7a7ed711ce01812bd0a0a3c0453d8/pyobjc_framework_cinematic-12.2-py2.py3-none-any.whl"
    sha256 "8df478081b8248a32e91aa2981806e05c551bc6f9ec1286b5ca2d1c64e981f6a"
  end
  resource "pyobjc-framework-ClassKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/17/78/7354e03126de7bd6a0919a73c4daf54e8e614b257e223caf3171b8ff03ca/pyobjc_framework_classkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f86e741cc43454de9560839e96800f2d0f9ab07f1e52416e82ccb343137d7e94"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/17/78/7354e03126de7bd6a0919a73c4daf54e8e614b257e223caf3171b8ff03ca/pyobjc_framework_classkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f86e741cc43454de9560839e96800f2d0f9ab07f1e52416e82ccb343137d7e94"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/17/78/7354e03126de7bd6a0919a73c4daf54e8e614b257e223caf3171b8ff03ca/pyobjc_framework_classkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f86e741cc43454de9560839e96800f2d0f9ab07f1e52416e82ccb343137d7e94"
    else
      url "https://files.pythonhosted.org/packages/17/78/7354e03126de7bd6a0919a73c4daf54e8e614b257e223caf3171b8ff03ca/pyobjc_framework_classkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f86e741cc43454de9560839e96800f2d0f9ab07f1e52416e82ccb343137d7e94"
    end
  end
  resource "pyobjc-framework-CloudKit" do
    url "https://files.pythonhosted.org/packages/cc/01/1ad78a6eebbbac6381aa1163028dfe74ccc4111444ecfc1954b4d02a53b1/pyobjc_framework_cloudkit-12.2-py2.py3-none-any.whl"
    sha256 "1e00a6d02ac005a4dd31aa0aa5e22fdd3e05f8324f91a175dfae7fd45d85afd1"
  end
  resource "pyobjc-framework-Cocoa" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/56/4b/df8e359e5e422e8f1430bde038aa64364e8c1d4542d7f6fcc4f8a97ec0b7/pyobjc_framework_cocoa-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "aecfd44908fa12a9291fb6ca2458ebbc611102de6784f2202a35fd5ed9f56c60"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/56/4b/df8e359e5e422e8f1430bde038aa64364e8c1d4542d7f6fcc4f8a97ec0b7/pyobjc_framework_cocoa-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "aecfd44908fa12a9291fb6ca2458ebbc611102de6784f2202a35fd5ed9f56c60"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/56/4b/df8e359e5e422e8f1430bde038aa64364e8c1d4542d7f6fcc4f8a97ec0b7/pyobjc_framework_cocoa-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "aecfd44908fa12a9291fb6ca2458ebbc611102de6784f2202a35fd5ed9f56c60"
    else
      url "https://files.pythonhosted.org/packages/56/4b/df8e359e5e422e8f1430bde038aa64364e8c1d4542d7f6fcc4f8a97ec0b7/pyobjc_framework_cocoa-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "aecfd44908fa12a9291fb6ca2458ebbc611102de6784f2202a35fd5ed9f56c60"
    end
  end
  resource "pyobjc-framework-Collaboration" do
    url "https://files.pythonhosted.org/packages/49/d8/a1eb9888ca7ee599bc484feb78c43453f8c154c986bdc0daff4948fe39c7/pyobjc_framework_collaboration-12.2-py2.py3-none-any.whl"
    sha256 "219f8e5b1f0cc25dc48460ca909c09127eb80b3aa0262cb50139cd46c84b63d1"
  end
  resource "pyobjc-framework-ColorSync" do
    url "https://files.pythonhosted.org/packages/e0/c7/0562840adbfaa21c37ced637653e4ade70618e911a151974c53d25c8f5d9/pyobjc_framework_colorsync-12.2-py2.py3-none-any.whl"
    sha256 "5d2ce9acd7ec28133facf0af900fc4a5d36971083811eb6da775be4b659f9b77"
  end
  resource "pyobjc-framework-CompositorServices" do
    url "https://files.pythonhosted.org/packages/ad/86/f172e0a687dec40e7809e1efdffeb666c8d369cb73c7e50cb6f84d0b49cf/pyobjc_framework_compositorservices-12.2-py2.py3-none-any.whl"
    sha256 "486f5e70250892122ba90f2923dc955a3622c4a047536ee3a0b15bd3568cd171"
  end
  resource "pyobjc-framework-Contacts" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/7f/f3/1c272535422ab8642ce251accceef3ab29695742be5f1e658a41b0027a99/pyobjc_framework_contacts-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "63abb417bf2d3565dfc79cd8febdb2499040ec44900a972c7aeba02120bc27f1"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/7f/f3/1c272535422ab8642ce251accceef3ab29695742be5f1e658a41b0027a99/pyobjc_framework_contacts-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "63abb417bf2d3565dfc79cd8febdb2499040ec44900a972c7aeba02120bc27f1"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/7f/f3/1c272535422ab8642ce251accceef3ab29695742be5f1e658a41b0027a99/pyobjc_framework_contacts-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "63abb417bf2d3565dfc79cd8febdb2499040ec44900a972c7aeba02120bc27f1"
    else
      url "https://files.pythonhosted.org/packages/7f/f3/1c272535422ab8642ce251accceef3ab29695742be5f1e658a41b0027a99/pyobjc_framework_contacts-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "63abb417bf2d3565dfc79cd8febdb2499040ec44900a972c7aeba02120bc27f1"
    end
  end
  resource "pyobjc-framework-ContactsUI" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/49/b0/e65fb4c42eaa394e568aa7585baebe765a10076c868c552dc4eded593441/pyobjc_framework_contactsui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "91e82a66a34fe939274f4f6867e157adb608e0aa52b9dcbff7c0a199871195ac"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/49/b0/e65fb4c42eaa394e568aa7585baebe765a10076c868c552dc4eded593441/pyobjc_framework_contactsui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "91e82a66a34fe939274f4f6867e157adb608e0aa52b9dcbff7c0a199871195ac"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/49/b0/e65fb4c42eaa394e568aa7585baebe765a10076c868c552dc4eded593441/pyobjc_framework_contactsui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "91e82a66a34fe939274f4f6867e157adb608e0aa52b9dcbff7c0a199871195ac"
    else
      url "https://files.pythonhosted.org/packages/49/b0/e65fb4c42eaa394e568aa7585baebe765a10076c868c552dc4eded593441/pyobjc_framework_contactsui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "91e82a66a34fe939274f4f6867e157adb608e0aa52b9dcbff7c0a199871195ac"
    end
  end
  resource "pyobjc-framework-CoreAudio" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/75/e8/6fa5951c9c2f87fa7c973fe179d53245f49e0878221305e01eb0444a218b/pyobjc_framework_coreaudio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "27ef90a6414bbb156a8f2ea22afff5af080fc7fcfb570f215739c1ca136544e1"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/75/e8/6fa5951c9c2f87fa7c973fe179d53245f49e0878221305e01eb0444a218b/pyobjc_framework_coreaudio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "27ef90a6414bbb156a8f2ea22afff5af080fc7fcfb570f215739c1ca136544e1"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/75/e8/6fa5951c9c2f87fa7c973fe179d53245f49e0878221305e01eb0444a218b/pyobjc_framework_coreaudio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "27ef90a6414bbb156a8f2ea22afff5af080fc7fcfb570f215739c1ca136544e1"
    else
      url "https://files.pythonhosted.org/packages/75/e8/6fa5951c9c2f87fa7c973fe179d53245f49e0878221305e01eb0444a218b/pyobjc_framework_coreaudio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "27ef90a6414bbb156a8f2ea22afff5af080fc7fcfb570f215739c1ca136544e1"
    end
  end
  resource "pyobjc-framework-CoreAudioKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e2/cc/0a8102a256bfbda603b94856ccf4c840658956e3b469725559af132984b5/pyobjc_framework_coreaudiokit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bf135b76cb36ef940ef340cafe233882edce97391e591ad635c6c1fbaa60565f"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e2/cc/0a8102a256bfbda603b94856ccf4c840658956e3b469725559af132984b5/pyobjc_framework_coreaudiokit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bf135b76cb36ef940ef340cafe233882edce97391e591ad635c6c1fbaa60565f"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e2/cc/0a8102a256bfbda603b94856ccf4c840658956e3b469725559af132984b5/pyobjc_framework_coreaudiokit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bf135b76cb36ef940ef340cafe233882edce97391e591ad635c6c1fbaa60565f"
    else
      url "https://files.pythonhosted.org/packages/e2/cc/0a8102a256bfbda603b94856ccf4c840658956e3b469725559af132984b5/pyobjc_framework_coreaudiokit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bf135b76cb36ef940ef340cafe233882edce97391e591ad635c6c1fbaa60565f"
    end
  end
  resource "pyobjc-framework-CoreBluetooth" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a7/ef/a75bd6c17e012f7d73a8a2d94e324528a82dc06451b6019d910b1a993864/pyobjc_framework_corebluetooth-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8a3b35a1253de626d5efe705dda36a4f1fb8753e48aafdc4dbf99dc9c9526d86"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/a7/ef/a75bd6c17e012f7d73a8a2d94e324528a82dc06451b6019d910b1a993864/pyobjc_framework_corebluetooth-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8a3b35a1253de626d5efe705dda36a4f1fb8753e48aafdc4dbf99dc9c9526d86"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/a7/ef/a75bd6c17e012f7d73a8a2d94e324528a82dc06451b6019d910b1a993864/pyobjc_framework_corebluetooth-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8a3b35a1253de626d5efe705dda36a4f1fb8753e48aafdc4dbf99dc9c9526d86"
    else
      url "https://files.pythonhosted.org/packages/a7/ef/a75bd6c17e012f7d73a8a2d94e324528a82dc06451b6019d910b1a993864/pyobjc_framework_corebluetooth-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8a3b35a1253de626d5efe705dda36a4f1fb8753e48aafdc4dbf99dc9c9526d86"
    end
  end
  resource "pyobjc-framework-CoreData" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/94/a8/5dd670a58f82fb4adc1b5b9634e66572d6331a7e849e02ac36265b4d2753/pyobjc_framework_coredata-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1c68b2fac8f9bf591296253f54742804eaa3c99844b487988e0090f51e69a645"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/94/a8/5dd670a58f82fb4adc1b5b9634e66572d6331a7e849e02ac36265b4d2753/pyobjc_framework_coredata-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1c68b2fac8f9bf591296253f54742804eaa3c99844b487988e0090f51e69a645"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/94/a8/5dd670a58f82fb4adc1b5b9634e66572d6331a7e849e02ac36265b4d2753/pyobjc_framework_coredata-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1c68b2fac8f9bf591296253f54742804eaa3c99844b487988e0090f51e69a645"
    else
      url "https://files.pythonhosted.org/packages/94/a8/5dd670a58f82fb4adc1b5b9634e66572d6331a7e849e02ac36265b4d2753/pyobjc_framework_coredata-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1c68b2fac8f9bf591296253f54742804eaa3c99844b487988e0090f51e69a645"
    end
  end
  resource "pyobjc-framework-CoreHaptics" do
    url "https://files.pythonhosted.org/packages/59/19/b4842ca6182d754360289384aa3b4adf3775a6c4ec30818c8b8c1c473792/pyobjc_framework_corehaptics-12.2-py2.py3-none-any.whl"
    sha256 "c04c64212e7e7a0859b23b939a4375a349176317cb2b11553d388965d9a8fec8"
  end
  resource "pyobjc-framework-CoreLocation" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e2/e2/90e8bb8654bda885e6acc8f15be2544f1c7cdb58503389b970dca5ae5324/pyobjc_framework_corelocation-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a3b70cca208369e8c68afd8cbe865d25829c34b338309a61b3b354d3824055a2"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e2/e2/90e8bb8654bda885e6acc8f15be2544f1c7cdb58503389b970dca5ae5324/pyobjc_framework_corelocation-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a3b70cca208369e8c68afd8cbe865d25829c34b338309a61b3b354d3824055a2"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e2/e2/90e8bb8654bda885e6acc8f15be2544f1c7cdb58503389b970dca5ae5324/pyobjc_framework_corelocation-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a3b70cca208369e8c68afd8cbe865d25829c34b338309a61b3b354d3824055a2"
    else
      url "https://files.pythonhosted.org/packages/e2/e2/90e8bb8654bda885e6acc8f15be2544f1c7cdb58503389b970dca5ae5324/pyobjc_framework_corelocation-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a3b70cca208369e8c68afd8cbe865d25829c34b338309a61b3b354d3824055a2"
    end
  end
  resource "pyobjc-framework-CoreMedia" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ce/6e/66ff680d04e1e16321aca36524ef3b442de89330edd06275b9e2303b6af9/pyobjc_framework_coremedia-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c1adf7b6fcfb4c88bc2150c6f0366c19774e46c6978ebcfb7c70d02753bc0183"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ce/6e/66ff680d04e1e16321aca36524ef3b442de89330edd06275b9e2303b6af9/pyobjc_framework_coremedia-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c1adf7b6fcfb4c88bc2150c6f0366c19774e46c6978ebcfb7c70d02753bc0183"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ce/6e/66ff680d04e1e16321aca36524ef3b442de89330edd06275b9e2303b6af9/pyobjc_framework_coremedia-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c1adf7b6fcfb4c88bc2150c6f0366c19774e46c6978ebcfb7c70d02753bc0183"
    else
      url "https://files.pythonhosted.org/packages/ce/6e/66ff680d04e1e16321aca36524ef3b442de89330edd06275b9e2303b6af9/pyobjc_framework_coremedia-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c1adf7b6fcfb4c88bc2150c6f0366c19774e46c6978ebcfb7c70d02753bc0183"
    end
  end
  resource "pyobjc-framework-CoreMediaIO" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c4/af/e39b0afd12229c9fc21945307d80f27f2e8548171d04327e4b6c8a601220/pyobjc_framework_coremediaio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "057d63ce28a64589d4ad103c5e9b0ef1c23e45e63693314eb75de9aba78ae7ff"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c4/af/e39b0afd12229c9fc21945307d80f27f2e8548171d04327e4b6c8a601220/pyobjc_framework_coremediaio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "057d63ce28a64589d4ad103c5e9b0ef1c23e45e63693314eb75de9aba78ae7ff"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c4/af/e39b0afd12229c9fc21945307d80f27f2e8548171d04327e4b6c8a601220/pyobjc_framework_coremediaio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "057d63ce28a64589d4ad103c5e9b0ef1c23e45e63693314eb75de9aba78ae7ff"
    else
      url "https://files.pythonhosted.org/packages/c4/af/e39b0afd12229c9fc21945307d80f27f2e8548171d04327e4b6c8a601220/pyobjc_framework_coremediaio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "057d63ce28a64589d4ad103c5e9b0ef1c23e45e63693314eb75de9aba78ae7ff"
    end
  end
  resource "pyobjc-framework-CoreMIDI" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c9/17/098da114f1f628551a48570a077747505afeedc63c3e6639dd7d17421e1b/pyobjc_framework_coremidi-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2d962b3f77f60fe608b845b903845585d0a47aed6345192d5a22d3b1ed205f1a"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c9/17/098da114f1f628551a48570a077747505afeedc63c3e6639dd7d17421e1b/pyobjc_framework_coremidi-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2d962b3f77f60fe608b845b903845585d0a47aed6345192d5a22d3b1ed205f1a"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c9/17/098da114f1f628551a48570a077747505afeedc63c3e6639dd7d17421e1b/pyobjc_framework_coremidi-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2d962b3f77f60fe608b845b903845585d0a47aed6345192d5a22d3b1ed205f1a"
    else
      url "https://files.pythonhosted.org/packages/c9/17/098da114f1f628551a48570a077747505afeedc63c3e6639dd7d17421e1b/pyobjc_framework_coremidi-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2d962b3f77f60fe608b845b903845585d0a47aed6345192d5a22d3b1ed205f1a"
    end
  end
  resource "pyobjc-framework-CoreML" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/99/27/577ae403c3d2dc6c49dc18e8b16d315c54fcf31cdbdc839523ea40af4777/pyobjc_framework_coreml-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0ab804c7fdeedaea8fd6e1ec832a23d57913b280d3cc40419adabb0032271160"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/99/27/577ae403c3d2dc6c49dc18e8b16d315c54fcf31cdbdc839523ea40af4777/pyobjc_framework_coreml-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0ab804c7fdeedaea8fd6e1ec832a23d57913b280d3cc40419adabb0032271160"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/99/27/577ae403c3d2dc6c49dc18e8b16d315c54fcf31cdbdc839523ea40af4777/pyobjc_framework_coreml-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0ab804c7fdeedaea8fd6e1ec832a23d57913b280d3cc40419adabb0032271160"
    else
      url "https://files.pythonhosted.org/packages/99/27/577ae403c3d2dc6c49dc18e8b16d315c54fcf31cdbdc839523ea40af4777/pyobjc_framework_coreml-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0ab804c7fdeedaea8fd6e1ec832a23d57913b280d3cc40419adabb0032271160"
    end
  end
  resource "pyobjc-framework-CoreMotion" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/39/ef/dc1a28f9f1fe86dd2b8b84bd1273cb1dbbf9fcd150097002fccc679eb4a4/pyobjc_framework_coremotion-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f5d1d3b4921cb334a4951623c85d3d5a2e79d13262d244e5355e42ffc0fc09e8"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/39/ef/dc1a28f9f1fe86dd2b8b84bd1273cb1dbbf9fcd150097002fccc679eb4a4/pyobjc_framework_coremotion-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f5d1d3b4921cb334a4951623c85d3d5a2e79d13262d244e5355e42ffc0fc09e8"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/39/ef/dc1a28f9f1fe86dd2b8b84bd1273cb1dbbf9fcd150097002fccc679eb4a4/pyobjc_framework_coremotion-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f5d1d3b4921cb334a4951623c85d3d5a2e79d13262d244e5355e42ffc0fc09e8"
    else
      url "https://files.pythonhosted.org/packages/39/ef/dc1a28f9f1fe86dd2b8b84bd1273cb1dbbf9fcd150097002fccc679eb4a4/pyobjc_framework_coremotion-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "f5d1d3b4921cb334a4951623c85d3d5a2e79d13262d244e5355e42ffc0fc09e8"
    end
  end
  resource "pyobjc-framework-CoreServices" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ef/f0/fc6dbfca3199ccb719c7591b478cd077746a924589383cc27bc426b64245/pyobjc_framework_coreservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "183a75dc6edeaa73f6f49b857bd5a61e522abcb5d7df1a3bee169896d0cac181"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ef/f0/fc6dbfca3199ccb719c7591b478cd077746a924589383cc27bc426b64245/pyobjc_framework_coreservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "183a75dc6edeaa73f6f49b857bd5a61e522abcb5d7df1a3bee169896d0cac181"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ef/f0/fc6dbfca3199ccb719c7591b478cd077746a924589383cc27bc426b64245/pyobjc_framework_coreservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "183a75dc6edeaa73f6f49b857bd5a61e522abcb5d7df1a3bee169896d0cac181"
    else
      url "https://files.pythonhosted.org/packages/ef/f0/fc6dbfca3199ccb719c7591b478cd077746a924589383cc27bc426b64245/pyobjc_framework_coreservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "183a75dc6edeaa73f6f49b857bd5a61e522abcb5d7df1a3bee169896d0cac181"
    end
  end
  resource "pyobjc-framework-CoreSpotlight" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/b9/94/4a9a50d83b026eb924f57399f741397ea999cc947367d78914ecb90ce51a/pyobjc_framework_corespotlight-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "884a7629a98703308b11a3b350899c89ad268aa278b005b289765a13172bb40e"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/b9/94/4a9a50d83b026eb924f57399f741397ea999cc947367d78914ecb90ce51a/pyobjc_framework_corespotlight-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "884a7629a98703308b11a3b350899c89ad268aa278b005b289765a13172bb40e"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/b9/94/4a9a50d83b026eb924f57399f741397ea999cc947367d78914ecb90ce51a/pyobjc_framework_corespotlight-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "884a7629a98703308b11a3b350899c89ad268aa278b005b289765a13172bb40e"
    else
      url "https://files.pythonhosted.org/packages/b9/94/4a9a50d83b026eb924f57399f741397ea999cc947367d78914ecb90ce51a/pyobjc_framework_corespotlight-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "884a7629a98703308b11a3b350899c89ad268aa278b005b289765a13172bb40e"
    end
  end
  resource "pyobjc-framework-CoreText" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/26/22/3c6dbe97cb5b121b01f61d575bf202238b0cd6f39f22f15d94179461b677/pyobjc_framework_coretext-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "88b9e705d47a663f079f6ebbca54f5b57f305bb639d5a9d943231596653520d7"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/26/22/3c6dbe97cb5b121b01f61d575bf202238b0cd6f39f22f15d94179461b677/pyobjc_framework_coretext-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "88b9e705d47a663f079f6ebbca54f5b57f305bb639d5a9d943231596653520d7"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/26/22/3c6dbe97cb5b121b01f61d575bf202238b0cd6f39f22f15d94179461b677/pyobjc_framework_coretext-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "88b9e705d47a663f079f6ebbca54f5b57f305bb639d5a9d943231596653520d7"
    else
      url "https://files.pythonhosted.org/packages/26/22/3c6dbe97cb5b121b01f61d575bf202238b0cd6f39f22f15d94179461b677/pyobjc_framework_coretext-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "88b9e705d47a663f079f6ebbca54f5b57f305bb639d5a9d943231596653520d7"
    end
  end
  resource "pyobjc-framework-CoreWLAN" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/87/f4/4a6a649323b656cb4ec33453da378bf88b9feb12b61f086efe81efed5d5b/pyobjc_framework_corewlan-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "daac8e5a802e52aec0f1240430c785b1e20219b5fa9928d951e0d8d8f23debb5"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/87/f4/4a6a649323b656cb4ec33453da378bf88b9feb12b61f086efe81efed5d5b/pyobjc_framework_corewlan-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "daac8e5a802e52aec0f1240430c785b1e20219b5fa9928d951e0d8d8f23debb5"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/87/f4/4a6a649323b656cb4ec33453da378bf88b9feb12b61f086efe81efed5d5b/pyobjc_framework_corewlan-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "daac8e5a802e52aec0f1240430c785b1e20219b5fa9928d951e0d8d8f23debb5"
    else
      url "https://files.pythonhosted.org/packages/87/f4/4a6a649323b656cb4ec33453da378bf88b9feb12b61f086efe81efed5d5b/pyobjc_framework_corewlan-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "daac8e5a802e52aec0f1240430c785b1e20219b5fa9928d951e0d8d8f23debb5"
    end
  end
  resource "pyobjc-framework-CryptoTokenKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a1/47/c5c5e9988faae629356f1fc0e57f80e26c095a9a015a21af0dcda129ae71/pyobjc_framework_cryptotokenkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ac46a8f261c465baa48c59b66fa4b80747033f6d9a252f23f6b7f24f2f2c826"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/a1/47/c5c5e9988faae629356f1fc0e57f80e26c095a9a015a21af0dcda129ae71/pyobjc_framework_cryptotokenkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ac46a8f261c465baa48c59b66fa4b80747033f6d9a252f23f6b7f24f2f2c826"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/a1/47/c5c5e9988faae629356f1fc0e57f80e26c095a9a015a21af0dcda129ae71/pyobjc_framework_cryptotokenkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ac46a8f261c465baa48c59b66fa4b80747033f6d9a252f23f6b7f24f2f2c826"
    else
      url "https://files.pythonhosted.org/packages/a1/47/c5c5e9988faae629356f1fc0e57f80e26c095a9a015a21af0dcda129ae71/pyobjc_framework_cryptotokenkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ac46a8f261c465baa48c59b66fa4b80747033f6d9a252f23f6b7f24f2f2c826"
    end
  end
  resource "pyobjc-framework-DataDetection" do
    url "https://files.pythonhosted.org/packages/e0/8c/080a4c6ecffe45a64db10912ecc8c777f4368f4c5ad859a584a73e7243e9/pyobjc_framework_datadetection-12.2-py2.py3-none-any.whl"
    sha256 "23246bea4dce73c702e176ed2be1ba26afc48a627c713a91417716c3d5915ec0"
  end
  resource "pyobjc-framework-DeviceCheck" do
    url "https://files.pythonhosted.org/packages/54/58/8dbb51f3f462ce1d1a880f8fafc47980f56e0ad1b7472e2a500c81d6332f/pyobjc_framework_devicecheck-12.2-py2.py3-none-any.whl"
    sha256 "77bbc267426dbdf80799d9a63ed17545c2c8332e765da8f5ce34f40be78e7776"
  end
  resource "pyobjc-framework-DeviceDiscoveryExtension" do
    url "https://files.pythonhosted.org/packages/97/9a/eee0a7ed475068d2bc24f2fe6a8243da384a3d5c742f6b0c436322e0b592/pyobjc_framework_devicediscoveryextension-12.2-py2.py3-none-any.whl"
    sha256 "d0f2187013cefb9dc3ff20abd8dd0260a257a6bd6cd661b4d5a364c877ee4ac7"
  end
  resource "pyobjc-framework-DictionaryServices" do
    url "https://files.pythonhosted.org/packages/3e/af/2b7cb4c630a0f9f0588a53a290d96898bb1fc8dcb2abf311c20e250d4924/pyobjc_framework_dictionaryservices-12.2-py2.py3-none-any.whl"
    sha256 "9257ed93dad0b4bcf82c871bc587f994d7619e5916df3662cc2510fe8f85ed5c"
  end
  resource "pyobjc-framework-DiscRecording" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/1e/0f/c0a93c4cc41c16ec0e71800b24e75a54e0262b895340900dd01118276850/pyobjc_framework_discrecording-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "99ef86ec82079ae4c413433ad6efe5fc526a3307cb9317f1614cc0acb55cfbae"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/1e/0f/c0a93c4cc41c16ec0e71800b24e75a54e0262b895340900dd01118276850/pyobjc_framework_discrecording-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "99ef86ec82079ae4c413433ad6efe5fc526a3307cb9317f1614cc0acb55cfbae"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/1e/0f/c0a93c4cc41c16ec0e71800b24e75a54e0262b895340900dd01118276850/pyobjc_framework_discrecording-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "99ef86ec82079ae4c413433ad6efe5fc526a3307cb9317f1614cc0acb55cfbae"
    else
      url "https://files.pythonhosted.org/packages/1e/0f/c0a93c4cc41c16ec0e71800b24e75a54e0262b895340900dd01118276850/pyobjc_framework_discrecording-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "99ef86ec82079ae4c413433ad6efe5fc526a3307cb9317f1614cc0acb55cfbae"
    end
  end
  resource "pyobjc-framework-DiscRecordingUI" do
    url "https://files.pythonhosted.org/packages/5f/bc/3d75efba436c907629af9f17414f10bf105581e6e6803d20d0ab097a4b44/pyobjc_framework_discrecordingui-12.2-py2.py3-none-any.whl"
    sha256 "4ae5d1ec84ff47cf041973c112024f7b3b7c6eb0d5cbd3cecc393998efa0f654"
  end
  resource "pyobjc-framework-DiskArbitration" do
    url "https://files.pythonhosted.org/packages/51/c1/93db22bbc25358cf523e7a66a76de6fdfff4719ce60e86a87d368587520d/pyobjc_framework_diskarbitration-12.2-py2.py3-none-any.whl"
    sha256 "9952012b50f8d87849ca74c56a8b6fcd9373e8b5aa4566f628165cd4a2458a25"
  end
  resource "pyobjc-framework-DVDPlayback" do
    url "https://files.pythonhosted.org/packages/da/70/c7cbd09f8a84f1fc904206f855688c76feb02aaae1ab4efb6f1858f0ec0b/pyobjc_framework_dvdplayback-12.2-py2.py3-none-any.whl"
    sha256 "37d0b460e0783c78c3099a653ae1a7db8158b12e4da6ca91d513ec708514baa6"
  end
  resource "pyobjc-framework-EventKit" do
    url "https://files.pythonhosted.org/packages/90/c0/257069ea9e34c3b0dc473f6ac9c03c95029e9b3c686875ae8f1c564eb0ac/pyobjc_framework_eventkit-12.2-py2.py3-none-any.whl"
    sha256 "b56a736182365eff268b6a8c958a663d53432bac5befd3116570d3f1e4ec8b1a"
  end
  resource "pyobjc-framework-ExceptionHandling" do
    url "https://files.pythonhosted.org/packages/c3/24/9ab5cba61d04445d36ef2bd52ff871056cedde22c3a2a4ff60f111d1f25b/pyobjc_framework_exceptionhandling-12.2-py2.py3-none-any.whl"
    sha256 "14a76583bec99e18c5d0b0fd1db554d6f75b614f2912435836bc4abe6e1220c5"
  end
  resource "pyobjc-framework-ExecutionPolicy" do
    url "https://files.pythonhosted.org/packages/9e/25/4b8994d6bc1b4647546a89225770e68121dad788e26fb2eba458e028d6fa/pyobjc_framework_executionpolicy-12.2-py2.py3-none-any.whl"
    sha256 "a8b6177182c1cf316696db76de23dd40b47e41e8eebbe6fa204492055c8f1f3b"
  end
  resource "pyobjc-framework-ExtensionKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ca/41/acaf60a6fba4235d3d5079a5ca8a9b60b50cdc20408f3c5c8d3719f6a73e/pyobjc_framework_extensionkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e6b8b9ee143cba5ea27fb3afeb5beef58a33525f1d3374ea40b339079e853c2c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ca/41/acaf60a6fba4235d3d5079a5ca8a9b60b50cdc20408f3c5c8d3719f6a73e/pyobjc_framework_extensionkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e6b8b9ee143cba5ea27fb3afeb5beef58a33525f1d3374ea40b339079e853c2c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ca/41/acaf60a6fba4235d3d5079a5ca8a9b60b50cdc20408f3c5c8d3719f6a73e/pyobjc_framework_extensionkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e6b8b9ee143cba5ea27fb3afeb5beef58a33525f1d3374ea40b339079e853c2c"
    else
      url "https://files.pythonhosted.org/packages/ca/41/acaf60a6fba4235d3d5079a5ca8a9b60b50cdc20408f3c5c8d3719f6a73e/pyobjc_framework_extensionkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e6b8b9ee143cba5ea27fb3afeb5beef58a33525f1d3374ea40b339079e853c2c"
    end
  end
  resource "pyobjc-framework-ExternalAccessory" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/16/5d/fb59ccf789d1a68048163f83ee3250ff0990fec759846ecca9c57dfe332a/pyobjc_framework_externalaccessory-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "55c985489251fae171a743a2d86f7d3011e8c5283e22aea803708d4fd2cd1c23"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/16/5d/fb59ccf789d1a68048163f83ee3250ff0990fec759846ecca9c57dfe332a/pyobjc_framework_externalaccessory-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "55c985489251fae171a743a2d86f7d3011e8c5283e22aea803708d4fd2cd1c23"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/16/5d/fb59ccf789d1a68048163f83ee3250ff0990fec759846ecca9c57dfe332a/pyobjc_framework_externalaccessory-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "55c985489251fae171a743a2d86f7d3011e8c5283e22aea803708d4fd2cd1c23"
    else
      url "https://files.pythonhosted.org/packages/16/5d/fb59ccf789d1a68048163f83ee3250ff0990fec759846ecca9c57dfe332a/pyobjc_framework_externalaccessory-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "55c985489251fae171a743a2d86f7d3011e8c5283e22aea803708d4fd2cd1c23"
    end
  end
  resource "pyobjc-framework-FileProvider" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/1c/e9/60b8fb83afe07e69b0eddf382f2847bf642cb70ee5bc38ebd703b1a73f01/pyobjc_framework_fileprovider-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "746dcf3149920fe858d4b0bb725175f6df5cbd30fd35ff73a10cef30521c6398"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/1c/e9/60b8fb83afe07e69b0eddf382f2847bf642cb70ee5bc38ebd703b1a73f01/pyobjc_framework_fileprovider-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "746dcf3149920fe858d4b0bb725175f6df5cbd30fd35ff73a10cef30521c6398"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/1c/e9/60b8fb83afe07e69b0eddf382f2847bf642cb70ee5bc38ebd703b1a73f01/pyobjc_framework_fileprovider-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "746dcf3149920fe858d4b0bb725175f6df5cbd30fd35ff73a10cef30521c6398"
    else
      url "https://files.pythonhosted.org/packages/1c/e9/60b8fb83afe07e69b0eddf382f2847bf642cb70ee5bc38ebd703b1a73f01/pyobjc_framework_fileprovider-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "746dcf3149920fe858d4b0bb725175f6df5cbd30fd35ff73a10cef30521c6398"
    end
  end
  resource "pyobjc-framework-FileProviderUI" do
    url "https://files.pythonhosted.org/packages/d5/40/4514fc9cf9b9f20d2abe1dac66c4f94b8c20da9db7865ee9dec9dd6f3f65/pyobjc_framework_fileproviderui-12.2-py2.py3-none-any.whl"
    sha256 "0874b16ea64d055f53d0c6ede6ba61b3dbe9d2b27a64db5c12b829391a510cb6"
  end
  resource "pyobjc-framework-FinderSync" do
    url "https://files.pythonhosted.org/packages/98/3f/cd17c17bd1e3baa57388d80c5343bceb02df455047a3cfb91498b32849cd/pyobjc_framework_findersync-12.2-py2.py3-none-any.whl"
    sha256 "6f7a461df88f4fe0cd64c0ad326c77bf1a8f72afb1bdf1f42c1d7e02b7340dd4"
  end
  resource "pyobjc-framework-FSEvents" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/5b/6d/7cb724925e45553698e674ef48830052e1f7433d2ac715f90efc1c000ff6/pyobjc_framework_fsevents-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "caa86498ea298a542664222b33f6db2b09b7d315e1b1cb702c4652edb1fdca92"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/5b/6d/7cb724925e45553698e674ef48830052e1f7433d2ac715f90efc1c000ff6/pyobjc_framework_fsevents-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "caa86498ea298a542664222b33f6db2b09b7d315e1b1cb702c4652edb1fdca92"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/5b/6d/7cb724925e45553698e674ef48830052e1f7433d2ac715f90efc1c000ff6/pyobjc_framework_fsevents-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "caa86498ea298a542664222b33f6db2b09b7d315e1b1cb702c4652edb1fdca92"
    else
      url "https://files.pythonhosted.org/packages/5b/6d/7cb724925e45553698e674ef48830052e1f7433d2ac715f90efc1c000ff6/pyobjc_framework_fsevents-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "caa86498ea298a542664222b33f6db2b09b7d315e1b1cb702c4652edb1fdca92"
    end
  end
  resource "pyobjc-framework-FSKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/9f/61/b2900135b0cbc46edbafffd9b2bc13482d9ad417b7a09876464a2be09f14/pyobjc_framework_fskit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "844a2b9f7377cbab03a578f0ef354450cff86d1520cd4f9a326590776df914fa"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/9f/61/b2900135b0cbc46edbafffd9b2bc13482d9ad417b7a09876464a2be09f14/pyobjc_framework_fskit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "844a2b9f7377cbab03a578f0ef354450cff86d1520cd4f9a326590776df914fa"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/9f/61/b2900135b0cbc46edbafffd9b2bc13482d9ad417b7a09876464a2be09f14/pyobjc_framework_fskit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "844a2b9f7377cbab03a578f0ef354450cff86d1520cd4f9a326590776df914fa"
    else
      url "https://files.pythonhosted.org/packages/9f/61/b2900135b0cbc46edbafffd9b2bc13482d9ad417b7a09876464a2be09f14/pyobjc_framework_fskit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "844a2b9f7377cbab03a578f0ef354450cff86d1520cd4f9a326590776df914fa"
    end
  end
  resource "pyobjc-framework-GameCenter" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/fe/52/7b37cae6390244058278a9322166b1d65f2a723d081b3d57f9cb4e5e3aca/pyobjc_framework_gamecenter-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bec386091dc9ebad94939acd26d2877d8f3a6dcaefab8a8336bb384b8f3c8f4e"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/fe/52/7b37cae6390244058278a9322166b1d65f2a723d081b3d57f9cb4e5e3aca/pyobjc_framework_gamecenter-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bec386091dc9ebad94939acd26d2877d8f3a6dcaefab8a8336bb384b8f3c8f4e"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/fe/52/7b37cae6390244058278a9322166b1d65f2a723d081b3d57f9cb4e5e3aca/pyobjc_framework_gamecenter-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bec386091dc9ebad94939acd26d2877d8f3a6dcaefab8a8336bb384b8f3c8f4e"
    else
      url "https://files.pythonhosted.org/packages/fe/52/7b37cae6390244058278a9322166b1d65f2a723d081b3d57f9cb4e5e3aca/pyobjc_framework_gamecenter-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bec386091dc9ebad94939acd26d2877d8f3a6dcaefab8a8336bb384b8f3c8f4e"
    end
  end
  resource "pyobjc-framework-GameController" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/cc/33/73b0769f8d91ccc992c4fc53bdc7de7ea8e1e425769b5a09e2136bf14d30/pyobjc_framework_gamecontroller-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "77f7e1155f7789ff5d86b202a37eb731db7d37796d4870ec9830bc94850ea806"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/cc/33/73b0769f8d91ccc992c4fc53bdc7de7ea8e1e425769b5a09e2136bf14d30/pyobjc_framework_gamecontroller-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "77f7e1155f7789ff5d86b202a37eb731db7d37796d4870ec9830bc94850ea806"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/cc/33/73b0769f8d91ccc992c4fc53bdc7de7ea8e1e425769b5a09e2136bf14d30/pyobjc_framework_gamecontroller-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "77f7e1155f7789ff5d86b202a37eb731db7d37796d4870ec9830bc94850ea806"
    else
      url "https://files.pythonhosted.org/packages/cc/33/73b0769f8d91ccc992c4fc53bdc7de7ea8e1e425769b5a09e2136bf14d30/pyobjc_framework_gamecontroller-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "77f7e1155f7789ff5d86b202a37eb731db7d37796d4870ec9830bc94850ea806"
    end
  end
  resource "pyobjc-framework-GameKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a5/fc/bd02d01198a4119f55b078a34ad90e6627be258d6eb9c26b570a39ca5407/pyobjc_framework_gamekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c891baea8d3f6530dfc0f1e824228ffd05f7e65f0053dc39c4dd6e3e56307b9f"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/a5/fc/bd02d01198a4119f55b078a34ad90e6627be258d6eb9c26b570a39ca5407/pyobjc_framework_gamekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c891baea8d3f6530dfc0f1e824228ffd05f7e65f0053dc39c4dd6e3e56307b9f"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/a5/fc/bd02d01198a4119f55b078a34ad90e6627be258d6eb9c26b570a39ca5407/pyobjc_framework_gamekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c891baea8d3f6530dfc0f1e824228ffd05f7e65f0053dc39c4dd6e3e56307b9f"
    else
      url "https://files.pythonhosted.org/packages/a5/fc/bd02d01198a4119f55b078a34ad90e6627be258d6eb9c26b570a39ca5407/pyobjc_framework_gamekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c891baea8d3f6530dfc0f1e824228ffd05f7e65f0053dc39c4dd6e3e56307b9f"
    end
  end
  resource "pyobjc-framework-GameplayKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/12/90/a87ffcf7b241918b09cbfdfefe2ca2a990c8645594953e121933530b62ef/pyobjc_framework_gameplaykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "68482906120a563ec2830cc02e8548b98d6203893ff1e8164e2612bcc5837ffe"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/12/90/a87ffcf7b241918b09cbfdfefe2ca2a990c8645594953e121933530b62ef/pyobjc_framework_gameplaykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "68482906120a563ec2830cc02e8548b98d6203893ff1e8164e2612bcc5837ffe"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/12/90/a87ffcf7b241918b09cbfdfefe2ca2a990c8645594953e121933530b62ef/pyobjc_framework_gameplaykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "68482906120a563ec2830cc02e8548b98d6203893ff1e8164e2612bcc5837ffe"
    else
      url "https://files.pythonhosted.org/packages/12/90/a87ffcf7b241918b09cbfdfefe2ca2a990c8645594953e121933530b62ef/pyobjc_framework_gameplaykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "68482906120a563ec2830cc02e8548b98d6203893ff1e8164e2612bcc5837ffe"
    end
  end
  resource "pyobjc-framework-GameSave" do
    url "https://files.pythonhosted.org/packages/e1/da/570c14f8c63cda0a128084cfc53f729e9183987b4a5582cc5ce4b3dbc6b7/pyobjc_framework_gamesave-12.2-py2.py3-none-any.whl"
    sha256 "766d6eede6e7f9ef1c43333127ce42fdfa9438e62ab94c9533d32d41eb79233a"
  end
  resource "pyobjc-framework-HealthKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/38/39/82d7c9e65344b6d223ea15132471e3091e85a6f0fb6e4672a27f2290360e/pyobjc_framework_healthkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "94a42750ac0fc7f0e624f5541798dc9dba4e557569016333c058552f29f237ef"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/38/39/82d7c9e65344b6d223ea15132471e3091e85a6f0fb6e4672a27f2290360e/pyobjc_framework_healthkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "94a42750ac0fc7f0e624f5541798dc9dba4e557569016333c058552f29f237ef"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/38/39/82d7c9e65344b6d223ea15132471e3091e85a6f0fb6e4672a27f2290360e/pyobjc_framework_healthkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "94a42750ac0fc7f0e624f5541798dc9dba4e557569016333c058552f29f237ef"
    else
      url "https://files.pythonhosted.org/packages/38/39/82d7c9e65344b6d223ea15132471e3091e85a6f0fb6e4672a27f2290360e/pyobjc_framework_healthkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "94a42750ac0fc7f0e624f5541798dc9dba4e557569016333c058552f29f237ef"
    end
  end
  resource "pyobjc-framework-ImageCaptureCore" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e6/4c/c35456724c11023080016a693bfd045263d57b493532bac08ca953c6d886/pyobjc_framework_imagecapturecore-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "daa65200664f6098ddf8f7525a83bcf77766fbbff98eba54226318cc624c0d2b"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e6/4c/c35456724c11023080016a693bfd045263d57b493532bac08ca953c6d886/pyobjc_framework_imagecapturecore-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "daa65200664f6098ddf8f7525a83bcf77766fbbff98eba54226318cc624c0d2b"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e6/4c/c35456724c11023080016a693bfd045263d57b493532bac08ca953c6d886/pyobjc_framework_imagecapturecore-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "daa65200664f6098ddf8f7525a83bcf77766fbbff98eba54226318cc624c0d2b"
    else
      url "https://files.pythonhosted.org/packages/e6/4c/c35456724c11023080016a693bfd045263d57b493532bac08ca953c6d886/pyobjc_framework_imagecapturecore-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "daa65200664f6098ddf8f7525a83bcf77766fbbff98eba54226318cc624c0d2b"
    end
  end
  resource "pyobjc-framework-InputMethodKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/3e/4f/b8b96ca3392c7157e3abcd67f804ff1bc653b8a1c8c054a7717454e7d5b8/pyobjc_framework_inputmethodkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ec6fe7374c080676b0a3d54906f542fdf49d685c45b7988e03a58530f54b4522"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/3e/4f/b8b96ca3392c7157e3abcd67f804ff1bc653b8a1c8c054a7717454e7d5b8/pyobjc_framework_inputmethodkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ec6fe7374c080676b0a3d54906f542fdf49d685c45b7988e03a58530f54b4522"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/3e/4f/b8b96ca3392c7157e3abcd67f804ff1bc653b8a1c8c054a7717454e7d5b8/pyobjc_framework_inputmethodkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ec6fe7374c080676b0a3d54906f542fdf49d685c45b7988e03a58530f54b4522"
    else
      url "https://files.pythonhosted.org/packages/3e/4f/b8b96ca3392c7157e3abcd67f804ff1bc653b8a1c8c054a7717454e7d5b8/pyobjc_framework_inputmethodkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ec6fe7374c080676b0a3d54906f542fdf49d685c45b7988e03a58530f54b4522"
    end
  end
  resource "pyobjc-framework-InstallerPlugins" do
    url "https://files.pythonhosted.org/packages/2a/08/9b8bb5f74df7d23d83ec5ab954301c91b8239091767df064aaff5b54c7a9/pyobjc_framework_installerplugins-12.2-py2.py3-none-any.whl"
    sha256 "358ef2faefe1b9938c0563e95551ad685c4c2097a7b8bc46dbf394765eb00674"
  end
  resource "pyobjc-framework-InstantMessage" do
    url "https://files.pythonhosted.org/packages/a4/63/68356d5150c203b6b027dc93048b7e81d53c58d5d437b60dce914f861496/pyobjc_framework_instantmessage-12.2-py2.py3-none-any.whl"
    sha256 "2fe9367f736b68557bf0c57a7da2c6a854cbf46ace9f6c5b161131309dc6b262"
  end
  resource "pyobjc-framework-Intents" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/95/78/30348e2ec790164ae11df2f07de9464ba767d3a73a55875b3e904e847e20/pyobjc_framework_intents-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ed30e7c0b26622621046ce20c318084288d144ccc513736dbca856b91c5227e8"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/95/78/30348e2ec790164ae11df2f07de9464ba767d3a73a55875b3e904e847e20/pyobjc_framework_intents-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ed30e7c0b26622621046ce20c318084288d144ccc513736dbca856b91c5227e8"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/95/78/30348e2ec790164ae11df2f07de9464ba767d3a73a55875b3e904e847e20/pyobjc_framework_intents-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ed30e7c0b26622621046ce20c318084288d144ccc513736dbca856b91c5227e8"
    else
      url "https://files.pythonhosted.org/packages/95/78/30348e2ec790164ae11df2f07de9464ba767d3a73a55875b3e904e847e20/pyobjc_framework_intents-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "ed30e7c0b26622621046ce20c318084288d144ccc513736dbca856b91c5227e8"
    end
  end
  resource "pyobjc-framework-IntentsUI" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e9/66/c65ce9b1e5241caec467ac8d983787cdfe8fb500ad4342d95cbcd9011674/pyobjc_framework_intentsui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6c369461ac245b084cfa4803e90a91f43838637a4cce4cb0d25e71cf02e8444b"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e9/66/c65ce9b1e5241caec467ac8d983787cdfe8fb500ad4342d95cbcd9011674/pyobjc_framework_intentsui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6c369461ac245b084cfa4803e90a91f43838637a4cce4cb0d25e71cf02e8444b"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e9/66/c65ce9b1e5241caec467ac8d983787cdfe8fb500ad4342d95cbcd9011674/pyobjc_framework_intentsui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6c369461ac245b084cfa4803e90a91f43838637a4cce4cb0d25e71cf02e8444b"
    else
      url "https://files.pythonhosted.org/packages/e9/66/c65ce9b1e5241caec467ac8d983787cdfe8fb500ad4342d95cbcd9011674/pyobjc_framework_intentsui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6c369461ac245b084cfa4803e90a91f43838637a4cce4cb0d25e71cf02e8444b"
    end
  end
  resource "pyobjc-framework-IOBluetooth" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/20/cc/9b09bc4022a05b00a187577caba8d46850c5a1d29112d3cf3826993080fb/pyobjc_framework_iobluetooth-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "63e089fb47feee2dd1f7de136ecf4a4985597b175cd210252fad7789dff5c537"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/20/cc/9b09bc4022a05b00a187577caba8d46850c5a1d29112d3cf3826993080fb/pyobjc_framework_iobluetooth-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "63e089fb47feee2dd1f7de136ecf4a4985597b175cd210252fad7789dff5c537"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/20/cc/9b09bc4022a05b00a187577caba8d46850c5a1d29112d3cf3826993080fb/pyobjc_framework_iobluetooth-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "63e089fb47feee2dd1f7de136ecf4a4985597b175cd210252fad7789dff5c537"
    else
      url "https://files.pythonhosted.org/packages/20/cc/9b09bc4022a05b00a187577caba8d46850c5a1d29112d3cf3826993080fb/pyobjc_framework_iobluetooth-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "63e089fb47feee2dd1f7de136ecf4a4985597b175cd210252fad7789dff5c537"
    end
  end
  resource "pyobjc-framework-IOBluetoothUI" do
    url "https://files.pythonhosted.org/packages/dd/a8/2ab7199c81c9f1541e20caa78cf44df5f05162665fcfd29f16e3a85fe822/pyobjc_framework_iobluetoothui-12.2-py2.py3-none-any.whl"
    sha256 "60622518d2f70e82398c62edf5e4e72403ef9210312945d82f3151cb5e888ccb"
  end
  resource "pyobjc-framework-IOSurface" do
    url "https://files.pythonhosted.org/packages/a6/f8/35fcd4d2504d0b470dd746138f47f6a8d8077fbde6aa85914c999ff9f7d5/pyobjc_framework_iosurface-12.2-py2.py3-none-any.whl"
    sha256 "3ccd3abe40e21028419a39dbea36f60cb7e34335ab1b81aebb7a1a2f644443c5"
  end
  resource "pyobjc-framework-iTunesLibrary" do
    url "https://files.pythonhosted.org/packages/3b/c3/6c8fa4798c8f3d5194dc7f1d4ca061840705b7a908b6ba05b3c9449a0b22/pyobjc_framework_ituneslibrary-12.2-py2.py3-none-any.whl"
    sha256 "9876e99dac601dc523b2f0e528fb21b027693b2b6f7d697fdf460cb819339980"
  end
  resource "pyobjc-framework-KernelManagement" do
    url "https://files.pythonhosted.org/packages/2b/5e/f98eb2645e1899579eb0b30695866611db6c25cef135dfdd323a164a5d8c/pyobjc_framework_kernelmanagement-12.2-py2.py3-none-any.whl"
    sha256 "14e789ed81eaaf3ca50557015416fdc232400b682b3756efaefe4afd061552e0"
  end
  resource "pyobjc-framework-LatentSemanticMapping" do
    url "https://files.pythonhosted.org/packages/0d/16/85b8b7dbc58a0cd0baba9854604be687620433fe354347c0e93e05025551/pyobjc_framework_latentsemanticmapping-12.2-py2.py3-none-any.whl"
    sha256 "1c87b1dd06626eca6188c2939f0dc1f58104ac9f8979c1dd8fc5f8c7d4d901e7"
  end
  resource "pyobjc-framework-LaunchServices" do
    url "https://files.pythonhosted.org/packages/9e/8d/04c6bb237127a6c109437af6bae244b3695deca6dae67a20d408db736a1b/pyobjc_framework_launchservices-12.2-py2.py3-none-any.whl"
    sha256 "4a0a478dfee2c53b7f3e2168f3c0e4183621050d324e7225251706500f8f5f0e"
  end
  resource "pyobjc-framework-libdispatch" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/4a/0e/caee3281628ba4913206167062274334a62ba5dedb8dada5fd884a53584f/pyobjc_framework_libdispatch-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fef3158dd4a068a9db8108a5cbf7da385788136e1d8af2e6fb7f82215016ecb2"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/4a/0e/caee3281628ba4913206167062274334a62ba5dedb8dada5fd884a53584f/pyobjc_framework_libdispatch-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fef3158dd4a068a9db8108a5cbf7da385788136e1d8af2e6fb7f82215016ecb2"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4a/0e/caee3281628ba4913206167062274334a62ba5dedb8dada5fd884a53584f/pyobjc_framework_libdispatch-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fef3158dd4a068a9db8108a5cbf7da385788136e1d8af2e6fb7f82215016ecb2"
    else
      url "https://files.pythonhosted.org/packages/4a/0e/caee3281628ba4913206167062274334a62ba5dedb8dada5fd884a53584f/pyobjc_framework_libdispatch-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fef3158dd4a068a9db8108a5cbf7da385788136e1d8af2e6fb7f82215016ecb2"
    end
  end
  resource "pyobjc-framework-libxpc" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/08/40/996207b9c0fff0ec877ca9ed88a3e546bdf0f82ac5052a9d3cc84be8e170/pyobjc_framework_libxpc-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ef1feb41c7f52b771c9dd490d60b267d25983b19e7f6a896a0534bb97fcb728"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/08/40/996207b9c0fff0ec877ca9ed88a3e546bdf0f82ac5052a9d3cc84be8e170/pyobjc_framework_libxpc-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ef1feb41c7f52b771c9dd490d60b267d25983b19e7f6a896a0534bb97fcb728"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/08/40/996207b9c0fff0ec877ca9ed88a3e546bdf0f82ac5052a9d3cc84be8e170/pyobjc_framework_libxpc-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ef1feb41c7f52b771c9dd490d60b267d25983b19e7f6a896a0534bb97fcb728"
    else
      url "https://files.pythonhosted.org/packages/08/40/996207b9c0fff0ec877ca9ed88a3e546bdf0f82ac5052a9d3cc84be8e170/pyobjc_framework_libxpc-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "2ef1feb41c7f52b771c9dd490d60b267d25983b19e7f6a896a0534bb97fcb728"
    end
  end
  resource "pyobjc-framework-LinkPresentation" do
    url "https://files.pythonhosted.org/packages/8e/42/264d202bd16bb6d8b2820c4a0d3eb1267add1c94aef68aeb749927dfff52/pyobjc_framework_linkpresentation-12.2-py2.py3-none-any.whl"
    sha256 "68f854b4b72fef3477f1fb6604b258207a5950164e8e278330cd4848281eafee"
  end
  resource "pyobjc-framework-LocalAuthentication" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/3c/38/a42123af0bc7ed7dba480b742fc97015bcf009dd81e2cf11b9eff79c6ed1/pyobjc_framework_localauthentication-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8ac59a0aa0ea790743b680eec3050d6df5319d5b473c7c1deacb037e2509c9fc"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/3c/38/a42123af0bc7ed7dba480b742fc97015bcf009dd81e2cf11b9eff79c6ed1/pyobjc_framework_localauthentication-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8ac59a0aa0ea790743b680eec3050d6df5319d5b473c7c1deacb037e2509c9fc"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/3c/38/a42123af0bc7ed7dba480b742fc97015bcf009dd81e2cf11b9eff79c6ed1/pyobjc_framework_localauthentication-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8ac59a0aa0ea790743b680eec3050d6df5319d5b473c7c1deacb037e2509c9fc"
    else
      url "https://files.pythonhosted.org/packages/3c/38/a42123af0bc7ed7dba480b742fc97015bcf009dd81e2cf11b9eff79c6ed1/pyobjc_framework_localauthentication-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8ac59a0aa0ea790743b680eec3050d6df5319d5b473c7c1deacb037e2509c9fc"
    end
  end
  resource "pyobjc-framework-LocalAuthenticationEmbeddedUI" do
    url "https://files.pythonhosted.org/packages/5d/94/2e453acd660d9e1e059269c72a95b9f1f2de4a3b7a5dc0f6d6cdfd0eed5e/pyobjc_framework_localauthenticationembeddedui-12.2-py2.py3-none-any.whl"
    sha256 "0b306917aa011deb364e85c118624d2d80c3eaf67016a345a6c4bc4960416b11"
  end
  resource "pyobjc-framework-MailKit" do
    url "https://files.pythonhosted.org/packages/b9/95/2b4b95d7e5e43750631596da4ee8de4800883475864ca9f169881fbefb3b/pyobjc_framework_mailkit-12.2-py2.py3-none-any.whl"
    sha256 "25b9aa8c513c40d931a7c5cc44571fd090e3d565f2e1153a634f6980b08da733"
  end
  resource "pyobjc-framework-MapKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/22/50/679cd8f873fb077ef88cb7d36b485a5235f158dc70bea7a8357c9738cb36/pyobjc_framework_mapkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "45834cdf0845470504077fd352799a32dcee75ea66da20a3874ba1dbc52f95b8"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/22/50/679cd8f873fb077ef88cb7d36b485a5235f158dc70bea7a8357c9738cb36/pyobjc_framework_mapkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "45834cdf0845470504077fd352799a32dcee75ea66da20a3874ba1dbc52f95b8"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/22/50/679cd8f873fb077ef88cb7d36b485a5235f158dc70bea7a8357c9738cb36/pyobjc_framework_mapkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "45834cdf0845470504077fd352799a32dcee75ea66da20a3874ba1dbc52f95b8"
    else
      url "https://files.pythonhosted.org/packages/22/50/679cd8f873fb077ef88cb7d36b485a5235f158dc70bea7a8357c9738cb36/pyobjc_framework_mapkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "45834cdf0845470504077fd352799a32dcee75ea66da20a3874ba1dbc52f95b8"
    end
  end
  resource "pyobjc-framework-MediaAccessibility" do
    url "https://files.pythonhosted.org/packages/3d/b9/fb53b336b9d6233ca96e53aec4ea142d49b225f846bbd9e13353477f118b/pyobjc_framework_mediaaccessibility-12.2-py2.py3-none-any.whl"
    sha256 "2e1d023c738ef09ed57635ae277b3644a09d7313e6bb979ee1c6d68bae57e4a8"
  end
  resource "pyobjc-framework-MediaExtension" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/d9/b4/9218de5d1a1018fa9bc52a342a128d1ff547613b8523b2fa48e215fbf281/pyobjc_framework_mediaextension-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9c315b0f9ec9a1a2239213d9b72f4653bc8ae8ff7a915e5c2b8b522e01b01c91"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/d9/b4/9218de5d1a1018fa9bc52a342a128d1ff547613b8523b2fa48e215fbf281/pyobjc_framework_mediaextension-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9c315b0f9ec9a1a2239213d9b72f4653bc8ae8ff7a915e5c2b8b522e01b01c91"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/d9/b4/9218de5d1a1018fa9bc52a342a128d1ff547613b8523b2fa48e215fbf281/pyobjc_framework_mediaextension-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9c315b0f9ec9a1a2239213d9b72f4653bc8ae8ff7a915e5c2b8b522e01b01c91"
    else
      url "https://files.pythonhosted.org/packages/d9/b4/9218de5d1a1018fa9bc52a342a128d1ff547613b8523b2fa48e215fbf281/pyobjc_framework_mediaextension-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9c315b0f9ec9a1a2239213d9b72f4653bc8ae8ff7a915e5c2b8b522e01b01c91"
    end
  end
  resource "pyobjc-framework-MediaLibrary" do
    url "https://files.pythonhosted.org/packages/1d/ee/8583d8c8a738e13f3e70bfb84ad70aab17f2995af55ece36780c1acbfdd1/pyobjc_framework_medialibrary-12.2-py2.py3-none-any.whl"
    sha256 "3bc97cb03e633a3f6f0a4e9d351210000100ebd1a4b19624c49c4e9bc7b5e574"
  end
  resource "pyobjc-framework-MediaPlayer" do
    url "https://files.pythonhosted.org/packages/1f/89/a12bf5f69920b8909cf92b3e7722082600db4262293d5b878b58eaae8f7a/pyobjc_framework_mediaplayer-12.2-py2.py3-none-any.whl"
    sha256 "436d3b410b84c7fa6577c4774faa4acc4bd3ca79f582b183e281ca63429a1574"
  end
  resource "pyobjc-framework-MediaToolbox" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ca/23/5388bd9a31639e02c9b626c6b4694f807a836b3f6ecd76477a64c9208736/pyobjc_framework_mediatoolbox-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "193f021a90cda4e18523538f99348080147f0e35bb5ed45e44b0f8a964a58851"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ca/23/5388bd9a31639e02c9b626c6b4694f807a836b3f6ecd76477a64c9208736/pyobjc_framework_mediatoolbox-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "193f021a90cda4e18523538f99348080147f0e35bb5ed45e44b0f8a964a58851"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ca/23/5388bd9a31639e02c9b626c6b4694f807a836b3f6ecd76477a64c9208736/pyobjc_framework_mediatoolbox-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "193f021a90cda4e18523538f99348080147f0e35bb5ed45e44b0f8a964a58851"
    else
      url "https://files.pythonhosted.org/packages/ca/23/5388bd9a31639e02c9b626c6b4694f807a836b3f6ecd76477a64c9208736/pyobjc_framework_mediatoolbox-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "193f021a90cda4e18523538f99348080147f0e35bb5ed45e44b0f8a964a58851"
    end
  end
  resource "pyobjc-framework-Metal" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ad/92/3c9a3f13a968f8935d3ea46e0ca5d3662b5d5fcaa4faa7b19e68e33956f5/pyobjc_framework_metal-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "06775870d7f40496d647f9ac37793e4a037ffaad43612aea7313460a52ee9e7f"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ad/92/3c9a3f13a968f8935d3ea46e0ca5d3662b5d5fcaa4faa7b19e68e33956f5/pyobjc_framework_metal-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "06775870d7f40496d647f9ac37793e4a037ffaad43612aea7313460a52ee9e7f"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/ad/92/3c9a3f13a968f8935d3ea46e0ca5d3662b5d5fcaa4faa7b19e68e33956f5/pyobjc_framework_metal-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "06775870d7f40496d647f9ac37793e4a037ffaad43612aea7313460a52ee9e7f"
    else
      url "https://files.pythonhosted.org/packages/ad/92/3c9a3f13a968f8935d3ea46e0ca5d3662b5d5fcaa4faa7b19e68e33956f5/pyobjc_framework_metal-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "06775870d7f40496d647f9ac37793e4a037ffaad43612aea7313460a52ee9e7f"
    end
  end
  resource "pyobjc-framework-MetalFX" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c6/9f/400860454b42234d9a3e8b22b9a39281556fd71b8a47a13f1f20e24437a5/pyobjc_framework_metalfx-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d2852041cfd3ab3a316412b3721074778d0ec8164e2f0e89daa3ce00b55d6b54"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c6/9f/400860454b42234d9a3e8b22b9a39281556fd71b8a47a13f1f20e24437a5/pyobjc_framework_metalfx-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d2852041cfd3ab3a316412b3721074778d0ec8164e2f0e89daa3ce00b55d6b54"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c6/9f/400860454b42234d9a3e8b22b9a39281556fd71b8a47a13f1f20e24437a5/pyobjc_framework_metalfx-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d2852041cfd3ab3a316412b3721074778d0ec8164e2f0e89daa3ce00b55d6b54"
    else
      url "https://files.pythonhosted.org/packages/c6/9f/400860454b42234d9a3e8b22b9a39281556fd71b8a47a13f1f20e24437a5/pyobjc_framework_metalfx-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d2852041cfd3ab3a316412b3721074778d0ec8164e2f0e89daa3ce00b55d6b54"
    end
  end
  resource "pyobjc-framework-MetalKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/82/7a/d7015d0501c741c470abea665ccea2832e762469b9ef37ccee9575130cc8/pyobjc_framework_metalkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bbcd660af609451ad40bbbfb9ae44fd838a91a5754c19a6496819704bc72dea0"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/82/7a/d7015d0501c741c470abea665ccea2832e762469b9ef37ccee9575130cc8/pyobjc_framework_metalkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bbcd660af609451ad40bbbfb9ae44fd838a91a5754c19a6496819704bc72dea0"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/82/7a/d7015d0501c741c470abea665ccea2832e762469b9ef37ccee9575130cc8/pyobjc_framework_metalkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bbcd660af609451ad40bbbfb9ae44fd838a91a5754c19a6496819704bc72dea0"
    else
      url "https://files.pythonhosted.org/packages/82/7a/d7015d0501c741c470abea665ccea2832e762469b9ef37ccee9575130cc8/pyobjc_framework_metalkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "bbcd660af609451ad40bbbfb9ae44fd838a91a5754c19a6496819704bc72dea0"
    end
  end
  resource "pyobjc-framework-MetalPerformanceShaders" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/6e/d8/fbeb68c5c03d6d4ce8030c2b55b910ce987bec58cfc327971da7936c5f04/pyobjc_framework_metalperformanceshaders-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c6fda7dbcf6b64a9be973248568ec893abd4db96efd89c28a354605fae8dec43"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/6e/d8/fbeb68c5c03d6d4ce8030c2b55b910ce987bec58cfc327971da7936c5f04/pyobjc_framework_metalperformanceshaders-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c6fda7dbcf6b64a9be973248568ec893abd4db96efd89c28a354605fae8dec43"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/6e/d8/fbeb68c5c03d6d4ce8030c2b55b910ce987bec58cfc327971da7936c5f04/pyobjc_framework_metalperformanceshaders-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c6fda7dbcf6b64a9be973248568ec893abd4db96efd89c28a354605fae8dec43"
    else
      url "https://files.pythonhosted.org/packages/6e/d8/fbeb68c5c03d6d4ce8030c2b55b910ce987bec58cfc327971da7936c5f04/pyobjc_framework_metalperformanceshaders-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c6fda7dbcf6b64a9be973248568ec893abd4db96efd89c28a354605fae8dec43"
    end
  end
  resource "pyobjc-framework-MetalPerformanceShadersGraph" do
    url "https://files.pythonhosted.org/packages/0b/ca/173cf282b48c454dac9ef40f96b0e5338077803f3fbf0f07c09333d3a9aa/pyobjc_framework_metalperformanceshadersgraph-12.2-py2.py3-none-any.whl"
    sha256 "e465d7717df4b000e3a529054cdf547e50e175f321b53c9520bcd6c69c08c837"
  end
  resource "pyobjc-framework-MetricKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/1c/81/b37fc0c8c58af7537f224da4f1d16e161756c09df62255b2273c245b8def/pyobjc_framework_metrickit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "881f4e1af1f3e8bd5f9b58f9c1f3c2a51e2a119742ab98476a32c1cb03d09e33"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/1c/81/b37fc0c8c58af7537f224da4f1d16e161756c09df62255b2273c245b8def/pyobjc_framework_metrickit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "881f4e1af1f3e8bd5f9b58f9c1f3c2a51e2a119742ab98476a32c1cb03d09e33"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/1c/81/b37fc0c8c58af7537f224da4f1d16e161756c09df62255b2273c245b8def/pyobjc_framework_metrickit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "881f4e1af1f3e8bd5f9b58f9c1f3c2a51e2a119742ab98476a32c1cb03d09e33"
    else
      url "https://files.pythonhosted.org/packages/1c/81/b37fc0c8c58af7537f224da4f1d16e161756c09df62255b2273c245b8def/pyobjc_framework_metrickit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "881f4e1af1f3e8bd5f9b58f9c1f3c2a51e2a119742ab98476a32c1cb03d09e33"
    end
  end
  resource "pyobjc-framework-MLCompute" do
    url "https://files.pythonhosted.org/packages/0c/7f/44c69bb026a7ffc00686a51514b43d7fe1a09682997cabe7a39a016aad0b/pyobjc_framework_mlcompute-12.2-py2.py3-none-any.whl"
    sha256 "18066ab867e02f5eb2cc66145b4274e6a7105e69165550356ec4a75937db1aae"
  end
  resource "pyobjc-framework-ModelIO" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/79/80/8f106d2a3c5236c05e58cf2652d0f346b723580b158543d33226bf0cdce3/pyobjc_framework_modelio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d8d6e411bf94a589372d2025ad854e1d9d96fa0c49af70898fd92c0265389dfb"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/79/80/8f106d2a3c5236c05e58cf2652d0f346b723580b158543d33226bf0cdce3/pyobjc_framework_modelio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d8d6e411bf94a589372d2025ad854e1d9d96fa0c49af70898fd92c0265389dfb"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/79/80/8f106d2a3c5236c05e58cf2652d0f346b723580b158543d33226bf0cdce3/pyobjc_framework_modelio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d8d6e411bf94a589372d2025ad854e1d9d96fa0c49af70898fd92c0265389dfb"
    else
      url "https://files.pythonhosted.org/packages/79/80/8f106d2a3c5236c05e58cf2652d0f346b723580b158543d33226bf0cdce3/pyobjc_framework_modelio-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d8d6e411bf94a589372d2025ad854e1d9d96fa0c49af70898fd92c0265389dfb"
    end
  end
  resource "pyobjc-framework-MultipeerConnectivity" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/0d/6c/ff2eb6e93c855d62b8fa7b07b76d549e381d2cbe37ffe6988ebdf6148a93/pyobjc_framework_multipeerconnectivity-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4168de44baf26e779a115dba20d4c4415199874316135932f0c1647b638d1571"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/0d/6c/ff2eb6e93c855d62b8fa7b07b76d549e381d2cbe37ffe6988ebdf6148a93/pyobjc_framework_multipeerconnectivity-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4168de44baf26e779a115dba20d4c4415199874316135932f0c1647b638d1571"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/0d/6c/ff2eb6e93c855d62b8fa7b07b76d549e381d2cbe37ffe6988ebdf6148a93/pyobjc_framework_multipeerconnectivity-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4168de44baf26e779a115dba20d4c4415199874316135932f0c1647b638d1571"
    else
      url "https://files.pythonhosted.org/packages/0d/6c/ff2eb6e93c855d62b8fa7b07b76d549e381d2cbe37ffe6988ebdf6148a93/pyobjc_framework_multipeerconnectivity-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4168de44baf26e779a115dba20d4c4415199874316135932f0c1647b638d1571"
    end
  end
  resource "pyobjc-framework-NaturalLanguage" do
    url "https://files.pythonhosted.org/packages/f5/00/5923b25edd9d64ba7494cb8e28c1c073ec5cbb43a41eaa70bffa4b7a2862/pyobjc_framework_naturallanguage-12.2-py2.py3-none-any.whl"
    sha256 "8c02a9ea25b888eefb0ac503211e17a9868a1781f5d5bf9c1655445abc14ffe2"
  end
  resource "pyobjc-framework-NetFS" do
    url "https://files.pythonhosted.org/packages/f8/c1/1584c42fc716ee13d085461913b59f5682fddd76b8094feb760477a8edab/pyobjc_framework_netfs-12.2-py2.py3-none-any.whl"
    sha256 "864d09a7b671f4407ff577739949c98ae8ba9b013433cf938fb0c86319151248"
  end
  resource "pyobjc-framework-Network" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/95/48/9d19d4dacbe35ad331c952501776965686eb93e385fddb8aac9feb02cc14/pyobjc_framework_network-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "842fcdb53fcf86af1f5a2287107955e05f124be1e461a407b77b944628f7a57b"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/95/48/9d19d4dacbe35ad331c952501776965686eb93e385fddb8aac9feb02cc14/pyobjc_framework_network-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "842fcdb53fcf86af1f5a2287107955e05f124be1e461a407b77b944628f7a57b"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/95/48/9d19d4dacbe35ad331c952501776965686eb93e385fddb8aac9feb02cc14/pyobjc_framework_network-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "842fcdb53fcf86af1f5a2287107955e05f124be1e461a407b77b944628f7a57b"
    else
      url "https://files.pythonhosted.org/packages/95/48/9d19d4dacbe35ad331c952501776965686eb93e385fddb8aac9feb02cc14/pyobjc_framework_network-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "842fcdb53fcf86af1f5a2287107955e05f124be1e461a407b77b944628f7a57b"
    end
  end
  resource "pyobjc-framework-NetworkExtension" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/30/94/c894b717aafc6c93dfa02424e64025d2f15fe90c283b2166a9131e0c9306/pyobjc_framework_networkextension-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e2bd61562844e400f8b8c5b434be44e42164af3e64ea4f51cdee335f92e9cc8c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/30/94/c894b717aafc6c93dfa02424e64025d2f15fe90c283b2166a9131e0c9306/pyobjc_framework_networkextension-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e2bd61562844e400f8b8c5b434be44e42164af3e64ea4f51cdee335f92e9cc8c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/30/94/c894b717aafc6c93dfa02424e64025d2f15fe90c283b2166a9131e0c9306/pyobjc_framework_networkextension-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e2bd61562844e400f8b8c5b434be44e42164af3e64ea4f51cdee335f92e9cc8c"
    else
      url "https://files.pythonhosted.org/packages/30/94/c894b717aafc6c93dfa02424e64025d2f15fe90c283b2166a9131e0c9306/pyobjc_framework_networkextension-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "e2bd61562844e400f8b8c5b434be44e42164af3e64ea4f51cdee335f92e9cc8c"
    end
  end
  resource "pyobjc-framework-NotificationCenter" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/18/bb/06fbcdcd37586878ce75cd61218594d0f3c4559262487b870dd4061f8394/pyobjc_framework_notificationcenter-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3425e37a3eaa63dc63b8ca9556472e57d020bb6681885f1e36ef875e67ea07e6"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/18/bb/06fbcdcd37586878ce75cd61218594d0f3c4559262487b870dd4061f8394/pyobjc_framework_notificationcenter-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3425e37a3eaa63dc63b8ca9556472e57d020bb6681885f1e36ef875e67ea07e6"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/18/bb/06fbcdcd37586878ce75cd61218594d0f3c4559262487b870dd4061f8394/pyobjc_framework_notificationcenter-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3425e37a3eaa63dc63b8ca9556472e57d020bb6681885f1e36ef875e67ea07e6"
    else
      url "https://files.pythonhosted.org/packages/18/bb/06fbcdcd37586878ce75cd61218594d0f3c4559262487b870dd4061f8394/pyobjc_framework_notificationcenter-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "3425e37a3eaa63dc63b8ca9556472e57d020bb6681885f1e36ef875e67ea07e6"
    end
  end
  resource "pyobjc-framework-OpenDirectory" do
    url "https://files.pythonhosted.org/packages/09/0d/6926ea3ba0f58e52e7a2260b416abd44c4680dc6c5c8e2212ccdd8d649cc/pyobjc_framework_opendirectory-12.2-py2.py3-none-any.whl"
    sha256 "71d17cc1be29dd2ac50ae76fd654d233bed3b117854bf0ace021d8242a5a5566"
  end
  resource "pyobjc-framework-OSAKit" do
    url "https://files.pythonhosted.org/packages/f4/ad/e79528da31d07f4d227c0f674b94a8a5b0aeac062d6a2df8363dbf0d99c9/pyobjc_framework_osakit-12.2-py2.py3-none-any.whl"
    sha256 "604f428b00a0b1da1f40fc8a78db96e08b23abc7d666545a0909cc6e7b5ca2fd"
  end
  resource "pyobjc-framework-OSLog" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/9f/d6/8945a6f9ff6f31f90a41e190d944bacd3d3115d73004eb778c95212fe9c6/pyobjc_framework_oslog-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "595f392d7966a28765dc35b7139243ee6cd1467a6edbb1f1ebe20af38e058542"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/9f/d6/8945a6f9ff6f31f90a41e190d944bacd3d3115d73004eb778c95212fe9c6/pyobjc_framework_oslog-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "595f392d7966a28765dc35b7139243ee6cd1467a6edbb1f1ebe20af38e058542"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/9f/d6/8945a6f9ff6f31f90a41e190d944bacd3d3115d73004eb778c95212fe9c6/pyobjc_framework_oslog-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "595f392d7966a28765dc35b7139243ee6cd1467a6edbb1f1ebe20af38e058542"
    else
      url "https://files.pythonhosted.org/packages/9f/d6/8945a6f9ff6f31f90a41e190d944bacd3d3115d73004eb778c95212fe9c6/pyobjc_framework_oslog-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "595f392d7966a28765dc35b7139243ee6cd1467a6edbb1f1ebe20af38e058542"
    end
  end
  resource "pyobjc-framework-PassKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/9c/40/a96eae0e665cec73c5d9e0a5760dae1b623483349e618985772f09be400e/pyobjc_framework_passkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "737215ab0ae39960e4b94d70380b873e06002a8905589cafc92b01bb9e54af77"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/9c/40/a96eae0e665cec73c5d9e0a5760dae1b623483349e618985772f09be400e/pyobjc_framework_passkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "737215ab0ae39960e4b94d70380b873e06002a8905589cafc92b01bb9e54af77"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/9c/40/a96eae0e665cec73c5d9e0a5760dae1b623483349e618985772f09be400e/pyobjc_framework_passkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "737215ab0ae39960e4b94d70380b873e06002a8905589cafc92b01bb9e54af77"
    else
      url "https://files.pythonhosted.org/packages/9c/40/a96eae0e665cec73c5d9e0a5760dae1b623483349e618985772f09be400e/pyobjc_framework_passkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "737215ab0ae39960e4b94d70380b873e06002a8905589cafc92b01bb9e54af77"
    end
  end
  resource "pyobjc-framework-PencilKit" do
    url "https://files.pythonhosted.org/packages/ee/d6/45dc7133e4d561b725718a2d8cd016605a6fe7bcf3f12a002c34a309ee4c/pyobjc_framework_pencilkit-12.2-py2.py3-none-any.whl"
    sha256 "aec57e9ebe2a875d4fc17c46ef16ffcee74ba7551dcd6d83207efb05c3377187"
  end
  resource "pyobjc-framework-PHASE" do
    url "https://files.pythonhosted.org/packages/a8/80/9d526e002b9be65dd80abc2cc5c62afe8a85f353282f33d212c6b44b52db/pyobjc_framework_phase-12.2-py2.py3-none-any.whl"
    sha256 "e8b85d7b2743b61f8920ad044f7e8370de80e5a4ca4f85ff42b6047b04e5f821"
  end
  resource "pyobjc-framework-Photos" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/aa/87/809159a91d74d25b098bf1b1551029329c348144caf726dc1aefd67892c6/pyobjc_framework_photos-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "facf2989cdf8cac7a34d6e5b6d410aa873b78edcd90da1e5d4812e30f5ad6b5b"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/aa/87/809159a91d74d25b098bf1b1551029329c348144caf726dc1aefd67892c6/pyobjc_framework_photos-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "facf2989cdf8cac7a34d6e5b6d410aa873b78edcd90da1e5d4812e30f5ad6b5b"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/aa/87/809159a91d74d25b098bf1b1551029329c348144caf726dc1aefd67892c6/pyobjc_framework_photos-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "facf2989cdf8cac7a34d6e5b6d410aa873b78edcd90da1e5d4812e30f5ad6b5b"
    else
      url "https://files.pythonhosted.org/packages/aa/87/809159a91d74d25b098bf1b1551029329c348144caf726dc1aefd67892c6/pyobjc_framework_photos-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "facf2989cdf8cac7a34d6e5b6d410aa873b78edcd90da1e5d4812e30f5ad6b5b"
    end
  end
  resource "pyobjc-framework-PhotosUI" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/af/c7/5dbd150e31f3ba6a972f7006bad934836e2063c1c81c4a245cb4eb6e190a/pyobjc_framework_photosui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "75ac87647349f556c91cca0d584720fefaa303fb472f20e31c4eefc4a7d7ffc2"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/af/c7/5dbd150e31f3ba6a972f7006bad934836e2063c1c81c4a245cb4eb6e190a/pyobjc_framework_photosui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "75ac87647349f556c91cca0d584720fefaa303fb472f20e31c4eefc4a7d7ffc2"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/af/c7/5dbd150e31f3ba6a972f7006bad934836e2063c1c81c4a245cb4eb6e190a/pyobjc_framework_photosui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "75ac87647349f556c91cca0d584720fefaa303fb472f20e31c4eefc4a7d7ffc2"
    else
      url "https://files.pythonhosted.org/packages/af/c7/5dbd150e31f3ba6a972f7006bad934836e2063c1c81c4a245cb4eb6e190a/pyobjc_framework_photosui-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "75ac87647349f556c91cca0d584720fefaa303fb472f20e31c4eefc4a7d7ffc2"
    end
  end
  resource "pyobjc-framework-PreferencePanes" do
    url "https://files.pythonhosted.org/packages/d9/5d/b75418c408c5e969352307b5fd4d739e55b3618cf94e729ba9768e453f2a/pyobjc_framework_preferencepanes-12.2-py2.py3-none-any.whl"
    sha256 "ccd142fb1d26f20e660651008fce1440f0abc1897bd5ffb5546cd77e89bb31a6"
  end
  resource "pyobjc-framework-PushKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a5/40/1b139236ac991f39723b9fbed278f655be4d6837f90d10214203e442064e/pyobjc_framework_pushkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "19dc136cfe89f43b3ff3e0643106aa4e527ac03936e50cc9d3bc2d91dd2a3226"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/a5/40/1b139236ac991f39723b9fbed278f655be4d6837f90d10214203e442064e/pyobjc_framework_pushkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "19dc136cfe89f43b3ff3e0643106aa4e527ac03936e50cc9d3bc2d91dd2a3226"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/a5/40/1b139236ac991f39723b9fbed278f655be4d6837f90d10214203e442064e/pyobjc_framework_pushkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "19dc136cfe89f43b3ff3e0643106aa4e527ac03936e50cc9d3bc2d91dd2a3226"
    else
      url "https://files.pythonhosted.org/packages/a5/40/1b139236ac991f39723b9fbed278f655be4d6837f90d10214203e442064e/pyobjc_framework_pushkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "19dc136cfe89f43b3ff3e0643106aa4e527ac03936e50cc9d3bc2d91dd2a3226"
    end
  end
  resource "pyobjc-framework-Quartz" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/11/b4/7ec90f6480b554173df109b570915c26d286c414d9444d2066fc93567781/pyobjc_framework_quartz-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "08f7c7b42de70875cee15f4d0e217471e382ffac44d0a5bcfd30f583b9b41adb"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/11/b4/7ec90f6480b554173df109b570915c26d286c414d9444d2066fc93567781/pyobjc_framework_quartz-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "08f7c7b42de70875cee15f4d0e217471e382ffac44d0a5bcfd30f583b9b41adb"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/11/b4/7ec90f6480b554173df109b570915c26d286c414d9444d2066fc93567781/pyobjc_framework_quartz-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "08f7c7b42de70875cee15f4d0e217471e382ffac44d0a5bcfd30f583b9b41adb"
    else
      url "https://files.pythonhosted.org/packages/11/b4/7ec90f6480b554173df109b570915c26d286c414d9444d2066fc93567781/pyobjc_framework_quartz-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "08f7c7b42de70875cee15f4d0e217471e382ffac44d0a5bcfd30f583b9b41adb"
    end
  end
  resource "pyobjc-framework-QuickLookThumbnailing" do
    url "https://files.pythonhosted.org/packages/48/5d/012d04a9fe4117f727e0436b7b6c9a30f780e04ee51f1d6e28bb6d1a8700/pyobjc_framework_quicklookthumbnailing-12.2-py2.py3-none-any.whl"
    sha256 "a60bdc283a44a70ad7a12840010b76d42ffd580c4bffb630da3874b229d30a74"
  end
  resource "pyobjc-framework-ReplayKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/0e/2f/c6f524971e6f61e763ce6c36ea9ecca4d61d423e79c26fc715e06ebd879b/pyobjc_framework_replaykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4479558bbaa1d0292e77d1d01b56eb6593a47310c9c49d213061b35094f0a948"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/0e/2f/c6f524971e6f61e763ce6c36ea9ecca4d61d423e79c26fc715e06ebd879b/pyobjc_framework_replaykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4479558bbaa1d0292e77d1d01b56eb6593a47310c9c49d213061b35094f0a948"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/0e/2f/c6f524971e6f61e763ce6c36ea9ecca4d61d423e79c26fc715e06ebd879b/pyobjc_framework_replaykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4479558bbaa1d0292e77d1d01b56eb6593a47310c9c49d213061b35094f0a948"
    else
      url "https://files.pythonhosted.org/packages/0e/2f/c6f524971e6f61e763ce6c36ea9ecca4d61d423e79c26fc715e06ebd879b/pyobjc_framework_replaykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "4479558bbaa1d0292e77d1d01b56eb6593a47310c9c49d213061b35094f0a948"
    end
  end
  resource "pyobjc-framework-SafariServices" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/84/6c/10d2e963d630ba86a0dd72d83ce9e6a8d59bea309d76a71868ec4bdfff3e/pyobjc_framework_safariservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6d5df844c6e10ef54a87ff9d847037978cd1cbf4ef87e31333a56726767ab5ff"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/84/6c/10d2e963d630ba86a0dd72d83ce9e6a8d59bea309d76a71868ec4bdfff3e/pyobjc_framework_safariservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6d5df844c6e10ef54a87ff9d847037978cd1cbf4ef87e31333a56726767ab5ff"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/84/6c/10d2e963d630ba86a0dd72d83ce9e6a8d59bea309d76a71868ec4bdfff3e/pyobjc_framework_safariservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6d5df844c6e10ef54a87ff9d847037978cd1cbf4ef87e31333a56726767ab5ff"
    else
      url "https://files.pythonhosted.org/packages/84/6c/10d2e963d630ba86a0dd72d83ce9e6a8d59bea309d76a71868ec4bdfff3e/pyobjc_framework_safariservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6d5df844c6e10ef54a87ff9d847037978cd1cbf4ef87e31333a56726767ab5ff"
    end
  end
  resource "pyobjc-framework-SafetyKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/34/87/351f935618c953e54258ba6d83a72343afe4296417ea5479f90233c6d1a9/pyobjc_framework_safetykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "650eeb355a74e39781dffe9ec364f9a7628f30f4bb4fd8080fdb850d90dad83f"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/34/87/351f935618c953e54258ba6d83a72343afe4296417ea5479f90233c6d1a9/pyobjc_framework_safetykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "650eeb355a74e39781dffe9ec364f9a7628f30f4bb4fd8080fdb850d90dad83f"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/34/87/351f935618c953e54258ba6d83a72343afe4296417ea5479f90233c6d1a9/pyobjc_framework_safetykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "650eeb355a74e39781dffe9ec364f9a7628f30f4bb4fd8080fdb850d90dad83f"
    else
      url "https://files.pythonhosted.org/packages/34/87/351f935618c953e54258ba6d83a72343afe4296417ea5479f90233c6d1a9/pyobjc_framework_safetykit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "650eeb355a74e39781dffe9ec364f9a7628f30f4bb4fd8080fdb850d90dad83f"
    end
  end
  resource "pyobjc-framework-SceneKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/49/56/8f9b1e188357488d143016852b1b203690a5d070d76e2266244daebca92a/pyobjc_framework_scenekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "7a28a88d7643c12c17a2bcc90899eb1c4d6750d48bc7fb71b8ea0bf9091c22df"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/49/56/8f9b1e188357488d143016852b1b203690a5d070d76e2266244daebca92a/pyobjc_framework_scenekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "7a28a88d7643c12c17a2bcc90899eb1c4d6750d48bc7fb71b8ea0bf9091c22df"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/49/56/8f9b1e188357488d143016852b1b203690a5d070d76e2266244daebca92a/pyobjc_framework_scenekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "7a28a88d7643c12c17a2bcc90899eb1c4d6750d48bc7fb71b8ea0bf9091c22df"
    else
      url "https://files.pythonhosted.org/packages/49/56/8f9b1e188357488d143016852b1b203690a5d070d76e2266244daebca92a/pyobjc_framework_scenekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "7a28a88d7643c12c17a2bcc90899eb1c4d6750d48bc7fb71b8ea0bf9091c22df"
    end
  end
  resource "pyobjc-framework-ScreenCaptureKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/0c/ed/94d8e98d2d035604e80ea72449b0e5a3fc63072a6f1aac7c76e3e5dff688/pyobjc_framework_screencapturekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d2b4d13114bcea42f4643ff263e4c5ac1d006289b2ed04ad0390180a4525bef6"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/0c/ed/94d8e98d2d035604e80ea72449b0e5a3fc63072a6f1aac7c76e3e5dff688/pyobjc_framework_screencapturekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d2b4d13114bcea42f4643ff263e4c5ac1d006289b2ed04ad0390180a4525bef6"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/0c/ed/94d8e98d2d035604e80ea72449b0e5a3fc63072a6f1aac7c76e3e5dff688/pyobjc_framework_screencapturekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d2b4d13114bcea42f4643ff263e4c5ac1d006289b2ed04ad0390180a4525bef6"
    else
      url "https://files.pythonhosted.org/packages/0c/ed/94d8e98d2d035604e80ea72449b0e5a3fc63072a6f1aac7c76e3e5dff688/pyobjc_framework_screencapturekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d2b4d13114bcea42f4643ff263e4c5ac1d006289b2ed04ad0390180a4525bef6"
    end
  end
  resource "pyobjc-framework-ScreenSaver" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e5/2d/a91eaee7dff0443e0930d9572d172370dccc15a2aefe37e2a21e01d04e35/pyobjc_framework_screensaver-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fa9e2b9527ecffa4cad752f50b02b521016641d07faf78717ce801a95f934598"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e5/2d/a91eaee7dff0443e0930d9572d172370dccc15a2aefe37e2a21e01d04e35/pyobjc_framework_screensaver-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fa9e2b9527ecffa4cad752f50b02b521016641d07faf78717ce801a95f934598"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e5/2d/a91eaee7dff0443e0930d9572d172370dccc15a2aefe37e2a21e01d04e35/pyobjc_framework_screensaver-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fa9e2b9527ecffa4cad752f50b02b521016641d07faf78717ce801a95f934598"
    else
      url "https://files.pythonhosted.org/packages/e5/2d/a91eaee7dff0443e0930d9572d172370dccc15a2aefe37e2a21e01d04e35/pyobjc_framework_screensaver-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fa9e2b9527ecffa4cad752f50b02b521016641d07faf78717ce801a95f934598"
    end
  end
  resource "pyobjc-framework-ScreenTime" do
    url "https://files.pythonhosted.org/packages/74/a6/2bdf31496600ffcbbb958910e03726e238f6a0ac6a7f3862cdbc28cab9c1/pyobjc_framework_screentime-12.2-py2.py3-none-any.whl"
    sha256 "ef463bf9cf66ab2679a6fdc3da0a51bca3050bee4ff7614ac714edaa13e36003"
  end
  resource "pyobjc-framework-ScriptingBridge" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c7/70/d4476462f9a922b4346a1aba5d43280102f718a95d33d42ade716deb6991/pyobjc_framework_scriptingbridge-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "be526303d2304e1cc88f00b673153f52e4af8324d1a58833442bec9164e4342b"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c7/70/d4476462f9a922b4346a1aba5d43280102f718a95d33d42ade716deb6991/pyobjc_framework_scriptingbridge-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "be526303d2304e1cc88f00b673153f52e4af8324d1a58833442bec9164e4342b"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c7/70/d4476462f9a922b4346a1aba5d43280102f718a95d33d42ade716deb6991/pyobjc_framework_scriptingbridge-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "be526303d2304e1cc88f00b673153f52e4af8324d1a58833442bec9164e4342b"
    else
      url "https://files.pythonhosted.org/packages/c7/70/d4476462f9a922b4346a1aba5d43280102f718a95d33d42ade716deb6991/pyobjc_framework_scriptingbridge-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "be526303d2304e1cc88f00b673153f52e4af8324d1a58833442bec9164e4342b"
    end
  end
  resource "pyobjc-framework-SearchKit" do
    url "https://files.pythonhosted.org/packages/47/ef/4e69b33a88e31e6d4e2ef9d266771b81bd20fce0eeffc1fa7c79ce9b3ec7/pyobjc_framework_searchkit-12.2-py2.py3-none-any.whl"
    sha256 "eb004bbc4522e7e7a8ee3751539056e18c204fd591ac8a2ffa6a8146117ab3fe"
  end
  resource "pyobjc-framework-Security" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/75/39/6cf09f7d53a37dc9be7ff2215d067fead65229c54e7153885f1a2bdba57f/pyobjc_framework_security-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a837738a85884518fa7d50de4b88c1df0fcc67241a05dec1b36272cb3aa37e22"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/75/39/6cf09f7d53a37dc9be7ff2215d067fead65229c54e7153885f1a2bdba57f/pyobjc_framework_security-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a837738a85884518fa7d50de4b88c1df0fcc67241a05dec1b36272cb3aa37e22"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/75/39/6cf09f7d53a37dc9be7ff2215d067fead65229c54e7153885f1a2bdba57f/pyobjc_framework_security-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a837738a85884518fa7d50de4b88c1df0fcc67241a05dec1b36272cb3aa37e22"
    else
      url "https://files.pythonhosted.org/packages/75/39/6cf09f7d53a37dc9be7ff2215d067fead65229c54e7153885f1a2bdba57f/pyobjc_framework_security-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a837738a85884518fa7d50de4b88c1df0fcc67241a05dec1b36272cb3aa37e22"
    end
  end
  resource "pyobjc-framework-SecurityFoundation" do
    url "https://files.pythonhosted.org/packages/bb/86/f3fe3bea55f684182e65a4762204802c5fdd7f0b67db77f5dff2a2b3b2f6/pyobjc_framework_securityfoundation-12.2-py2.py3-none-any.whl"
    sha256 "7e1c8307799cc819cf5891ed046b78eae4907e267592456688fe15f5892ec16f"
  end
  resource "pyobjc-framework-SecurityInterface" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c8/98/f738a5e68a4f19e650f9614d83fb043d4e18895f38aa4b1515c765e0c8cf/pyobjc_framework_securityinterface-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a54d16c9e0a0810059bd8a64debe77854d357b974b387d0fa55879845e67e46e"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c8/98/f738a5e68a4f19e650f9614d83fb043d4e18895f38aa4b1515c765e0c8cf/pyobjc_framework_securityinterface-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a54d16c9e0a0810059bd8a64debe77854d357b974b387d0fa55879845e67e46e"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c8/98/f738a5e68a4f19e650f9614d83fb043d4e18895f38aa4b1515c765e0c8cf/pyobjc_framework_securityinterface-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a54d16c9e0a0810059bd8a64debe77854d357b974b387d0fa55879845e67e46e"
    else
      url "https://files.pythonhosted.org/packages/c8/98/f738a5e68a4f19e650f9614d83fb043d4e18895f38aa4b1515c765e0c8cf/pyobjc_framework_securityinterface-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a54d16c9e0a0810059bd8a64debe77854d357b974b387d0fa55879845e67e46e"
    end
  end
  resource "pyobjc-framework-SecurityUI" do
    url "https://files.pythonhosted.org/packages/92/a5/db3bc24bd588cb704bb7db16f0f73177b0488c7577d676ced3932f1f41ee/pyobjc_framework_securityui-12.2-py2.py3-none-any.whl"
    sha256 "d6cc86e9c039e8a1ac0227947277fb2b46ca2b9f9bb1fb7f7b081a3717ac045e"
  end
  resource "pyobjc-framework-SensitiveContentAnalysis" do
    url "https://files.pythonhosted.org/packages/e1/37/3c92718706b58f76eeacbafc5d6ba1b09a5ff684cd8f47ee7b53dc139d70/pyobjc_framework_sensitivecontentanalysis-12.2-py2.py3-none-any.whl"
    sha256 "5beb7d718e6dea0b17c14560ebaa3474f7aa349e412f974573cfae84cd7121b7"
  end
  resource "pyobjc-framework-ServiceManagement" do
    url "https://files.pythonhosted.org/packages/09/67/d02639a189926546ddd2afd5015c0a5574e8310c2a59633bff0ad2b90b2a/pyobjc_framework_servicemanagement-12.2-py2.py3-none-any.whl"
    sha256 "fa8b9d3bcfd0d2e6feb0884f3a95fda9cd681baf0b0ca457ec3f611de9439f7f"
  end
  resource "pyobjc-framework-SharedWithYou" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/41/08/24a827de4d50388848aef2c162756b3bcf24545f2650dfe6602939df53b6/pyobjc_framework_sharedwithyou-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9556e5da95153991712b9556f5c19804a98c578c6a3e41fe240d414c77319484"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/41/08/24a827de4d50388848aef2c162756b3bcf24545f2650dfe6602939df53b6/pyobjc_framework_sharedwithyou-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9556e5da95153991712b9556f5c19804a98c578c6a3e41fe240d414c77319484"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/41/08/24a827de4d50388848aef2c162756b3bcf24545f2650dfe6602939df53b6/pyobjc_framework_sharedwithyou-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9556e5da95153991712b9556f5c19804a98c578c6a3e41fe240d414c77319484"
    else
      url "https://files.pythonhosted.org/packages/41/08/24a827de4d50388848aef2c162756b3bcf24545f2650dfe6602939df53b6/pyobjc_framework_sharedwithyou-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "9556e5da95153991712b9556f5c19804a98c578c6a3e41fe240d414c77319484"
    end
  end
  resource "pyobjc-framework-SharedWithYouCore" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/f4/b8/062c40dc958ad481a1936c334111c9630d3ad542b1a0e7ccac0c95bc7552/pyobjc_framework_sharedwithyoucore-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "24b9233ff69030a7e55615a80b8c1dc13049ec6d14ae673aec3b6a5ebaf0fc5f"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/f4/b8/062c40dc958ad481a1936c334111c9630d3ad542b1a0e7ccac0c95bc7552/pyobjc_framework_sharedwithyoucore-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "24b9233ff69030a7e55615a80b8c1dc13049ec6d14ae673aec3b6a5ebaf0fc5f"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/f4/b8/062c40dc958ad481a1936c334111c9630d3ad542b1a0e7ccac0c95bc7552/pyobjc_framework_sharedwithyoucore-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "24b9233ff69030a7e55615a80b8c1dc13049ec6d14ae673aec3b6a5ebaf0fc5f"
    else
      url "https://files.pythonhosted.org/packages/f4/b8/062c40dc958ad481a1936c334111c9630d3ad542b1a0e7ccac0c95bc7552/pyobjc_framework_sharedwithyoucore-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "24b9233ff69030a7e55615a80b8c1dc13049ec6d14ae673aec3b6a5ebaf0fc5f"
    end
  end
  resource "pyobjc-framework-ShazamKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/47/25/b0cec78700270e3a99215b60566a28c6dee4e70dd2d6cd93f8d31399d24e/pyobjc_framework_shazamkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d116b4e3e09c92ee33dbe4852570510ab7ca0f43a1f02d708ef10b7d6a681b19"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/47/25/b0cec78700270e3a99215b60566a28c6dee4e70dd2d6cd93f8d31399d24e/pyobjc_framework_shazamkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d116b4e3e09c92ee33dbe4852570510ab7ca0f43a1f02d708ef10b7d6a681b19"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/47/25/b0cec78700270e3a99215b60566a28c6dee4e70dd2d6cd93f8d31399d24e/pyobjc_framework_shazamkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d116b4e3e09c92ee33dbe4852570510ab7ca0f43a1f02d708ef10b7d6a681b19"
    else
      url "https://files.pythonhosted.org/packages/47/25/b0cec78700270e3a99215b60566a28c6dee4e70dd2d6cd93f8d31399d24e/pyobjc_framework_shazamkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d116b4e3e09c92ee33dbe4852570510ab7ca0f43a1f02d708ef10b7d6a681b19"
    end
  end
  resource "pyobjc-framework-Social" do
    url "https://files.pythonhosted.org/packages/24/93/e8f2405693ca24878b1fe1cf58d4aa58b293f4e774af64a56aeba904b33b/pyobjc_framework_social-12.2-py2.py3-none-any.whl"
    sha256 "d012f52721d694000b37999b2fed213332bf89e8a682f4d29656db4d8c6c7087"
  end
  resource "pyobjc-framework-SoundAnalysis" do
    url "https://files.pythonhosted.org/packages/23/8b/fb4db5583f5be6a5537baa1ecc39ae56f2bc1bdd6fc8dc7912e7c48b36fa/pyobjc_framework_soundanalysis-12.2-py2.py3-none-any.whl"
    sha256 "d669deee79636bc6858e40039d5c9b4cca47af7b4cf042c787c52f39b5b5ab40"
  end
  resource "pyobjc-framework-Speech" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/37/97/0bb1b78cfcf5613a1e9e90043cda358791f275d366274efea11ae9c08b2d/pyobjc_framework_speech-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "74993681f0d7ef50a5c132346f74142729c477fb917a584f84c204ba6fd4332c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/37/97/0bb1b78cfcf5613a1e9e90043cda358791f275d366274efea11ae9c08b2d/pyobjc_framework_speech-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "74993681f0d7ef50a5c132346f74142729c477fb917a584f84c204ba6fd4332c"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/37/97/0bb1b78cfcf5613a1e9e90043cda358791f275d366274efea11ae9c08b2d/pyobjc_framework_speech-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "74993681f0d7ef50a5c132346f74142729c477fb917a584f84c204ba6fd4332c"
    else
      url "https://files.pythonhosted.org/packages/37/97/0bb1b78cfcf5613a1e9e90043cda358791f275d366274efea11ae9c08b2d/pyobjc_framework_speech-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "74993681f0d7ef50a5c132346f74142729c477fb917a584f84c204ba6fd4332c"
    end
  end
  resource "pyobjc-framework-SpriteKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/3d/ba/23397f87cd54bfcecd8be53e52b00882405ad27036eae8a5c835b7acc9c2/pyobjc_framework_spritekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a7009d0693b72308500f9297cad80d8d95545d58637fcc43129a744c7c18d662"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/3d/ba/23397f87cd54bfcecd8be53e52b00882405ad27036eae8a5c835b7acc9c2/pyobjc_framework_spritekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a7009d0693b72308500f9297cad80d8d95545d58637fcc43129a744c7c18d662"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/3d/ba/23397f87cd54bfcecd8be53e52b00882405ad27036eae8a5c835b7acc9c2/pyobjc_framework_spritekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a7009d0693b72308500f9297cad80d8d95545d58637fcc43129a744c7c18d662"
    else
      url "https://files.pythonhosted.org/packages/3d/ba/23397f87cd54bfcecd8be53e52b00882405ad27036eae8a5c835b7acc9c2/pyobjc_framework_spritekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a7009d0693b72308500f9297cad80d8d95545d58637fcc43129a744c7c18d662"
    end
  end
  resource "pyobjc-framework-StoreKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c8/8f/ca5b9b3688df3d30e564d6f48f9d63456a5bf76c98a5c0746f261766b7d0/pyobjc_framework_storekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1e8b62a74c2174e8685471fcb302a0cf263b521b9e14ff65018eb2e3c13beacd"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/c8/8f/ca5b9b3688df3d30e564d6f48f9d63456a5bf76c98a5c0746f261766b7d0/pyobjc_framework_storekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1e8b62a74c2174e8685471fcb302a0cf263b521b9e14ff65018eb2e3c13beacd"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c8/8f/ca5b9b3688df3d30e564d6f48f9d63456a5bf76c98a5c0746f261766b7d0/pyobjc_framework_storekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1e8b62a74c2174e8685471fcb302a0cf263b521b9e14ff65018eb2e3c13beacd"
    else
      url "https://files.pythonhosted.org/packages/c8/8f/ca5b9b3688df3d30e564d6f48f9d63456a5bf76c98a5c0746f261766b7d0/pyobjc_framework_storekit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "1e8b62a74c2174e8685471fcb302a0cf263b521b9e14ff65018eb2e3c13beacd"
    end
  end
  resource "pyobjc-framework-Symbols" do
    url "https://files.pythonhosted.org/packages/6d/de/168b3925a76417978e5bc5921c8ac0a278e5a672302a20ca10f18d317695/pyobjc_framework_symbols-12.2-py2.py3-none-any.whl"
    sha256 "abc83c18ef8733897667d0b4d79400e3c38828347985bcad4aaf40b0cd61c94a"
  end
  resource "pyobjc-framework-SyncServices" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/33/0a/6971856780f54f9f2ed94dd034fce70e02653dad10902badb10ad2c1442d/pyobjc_framework_syncservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d7944f195da7488e89df0f18130a5ed6db29fcbd9404e76d108f9e4aeccf2576"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/33/0a/6971856780f54f9f2ed94dd034fce70e02653dad10902badb10ad2c1442d/pyobjc_framework_syncservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d7944f195da7488e89df0f18130a5ed6db29fcbd9404e76d108f9e4aeccf2576"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/33/0a/6971856780f54f9f2ed94dd034fce70e02653dad10902badb10ad2c1442d/pyobjc_framework_syncservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d7944f195da7488e89df0f18130a5ed6db29fcbd9404e76d108f9e4aeccf2576"
    else
      url "https://files.pythonhosted.org/packages/33/0a/6971856780f54f9f2ed94dd034fce70e02653dad10902badb10ad2c1442d/pyobjc_framework_syncservices-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "d7944f195da7488e89df0f18130a5ed6db29fcbd9404e76d108f9e4aeccf2576"
    end
  end
  resource "pyobjc-framework-SystemConfiguration" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/18/07/9b72143a735bd5d17e5e81e3862097438c8020acecb9e72511584e86718c/pyobjc_framework_systemconfiguration-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8a384b7cc722a7a266707bf3f145cb4cca88facea5000ef2928327ad3de1ea51"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/18/07/9b72143a735bd5d17e5e81e3862097438c8020acecb9e72511584e86718c/pyobjc_framework_systemconfiguration-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8a384b7cc722a7a266707bf3f145cb4cca88facea5000ef2928327ad3de1ea51"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/18/07/9b72143a735bd5d17e5e81e3862097438c8020acecb9e72511584e86718c/pyobjc_framework_systemconfiguration-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8a384b7cc722a7a266707bf3f145cb4cca88facea5000ef2928327ad3de1ea51"
    else
      url "https://files.pythonhosted.org/packages/18/07/9b72143a735bd5d17e5e81e3862097438c8020acecb9e72511584e86718c/pyobjc_framework_systemconfiguration-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8a384b7cc722a7a266707bf3f145cb4cca88facea5000ef2928327ad3de1ea51"
    end
  end
  resource "pyobjc-framework-SystemExtensions" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/18/5a/606fab2d2bd2d0ca4ab834b7a73547ae5f8faa095e64f20e210f976733ec/pyobjc_framework_systemextensions-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8accafc90d9707cbbc35461b37d00ecac48e569440ad935d23ab6e28cf8ebb9d"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/18/5a/606fab2d2bd2d0ca4ab834b7a73547ae5f8faa095e64f20e210f976733ec/pyobjc_framework_systemextensions-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8accafc90d9707cbbc35461b37d00ecac48e569440ad935d23ab6e28cf8ebb9d"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/18/5a/606fab2d2bd2d0ca4ab834b7a73547ae5f8faa095e64f20e210f976733ec/pyobjc_framework_systemextensions-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8accafc90d9707cbbc35461b37d00ecac48e569440ad935d23ab6e28cf8ebb9d"
    else
      url "https://files.pythonhosted.org/packages/18/5a/606fab2d2bd2d0ca4ab834b7a73547ae5f8faa095e64f20e210f976733ec/pyobjc_framework_systemextensions-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8accafc90d9707cbbc35461b37d00ecac48e569440ad935d23ab6e28cf8ebb9d"
    end
  end
  resource "pyobjc-framework-ThreadNetwork" do
    url "https://files.pythonhosted.org/packages/a4/7e/dfa9e914c1f192d6afdb504efc01f5aac777a73d43cfe103896bb5072ee2/pyobjc_framework_threadnetwork-12.2-py2.py3-none-any.whl"
    sha256 "08c7a03e11c60dca7b3f219db744986b90b8797d61b6842e0c0bad192e723f48"
  end
  resource "pyobjc-framework-UniformTypeIdentifiers" do
    url "https://files.pythonhosted.org/packages/da/19/4f314697bc8f519fe6505afe51d83d7fdcae93239b7bab5941f4bebc1f9e/pyobjc_framework_uniformtypeidentifiers-12.2-py2.py3-none-any.whl"
    sha256 "f140a378cfe6a8ca47ce3b04fd5a4c4bec1fcbedac8acc87e2c18985bb805203"
  end
  resource "pyobjc-framework-UserNotifications" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/fa/00/659908e2a3654564727daddc494624531e9950274627130b74f918e9fa84/pyobjc_framework_usernotifications-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c227579be5f40579b6345400578c0f0c56dc85811d56b912937ee2408dd00b83"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/fa/00/659908e2a3654564727daddc494624531e9950274627130b74f918e9fa84/pyobjc_framework_usernotifications-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c227579be5f40579b6345400578c0f0c56dc85811d56b912937ee2408dd00b83"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/fa/00/659908e2a3654564727daddc494624531e9950274627130b74f918e9fa84/pyobjc_framework_usernotifications-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c227579be5f40579b6345400578c0f0c56dc85811d56b912937ee2408dd00b83"
    else
      url "https://files.pythonhosted.org/packages/fa/00/659908e2a3654564727daddc494624531e9950274627130b74f918e9fa84/pyobjc_framework_usernotifications-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "c227579be5f40579b6345400578c0f0c56dc85811d56b912937ee2408dd00b83"
    end
  end
  resource "pyobjc-framework-UserNotificationsUI" do
    url "https://files.pythonhosted.org/packages/c6/29/f4413e1941e153a770b2d85faee4d3a4f9be67b69f5823f63db8dd091356/pyobjc_framework_usernotificationsui-12.2-py2.py3-none-any.whl"
    sha256 "a5d92117c2d18e2b6365f5e39daf45a68491a66ac9103b1bc94df43b8868c256"
  end
  resource "pyobjc-framework-VideoSubscriberAccount" do
    url "https://files.pythonhosted.org/packages/d3/03/f3b0c4ed85b4883d5fcd48ba2efd807507c3a5ce7c3aa7d4366dce81f503/pyobjc_framework_videosubscriberaccount-12.2-py2.py3-none-any.whl"
    sha256 "b158b03e1432dc229fabc96451f5ac8db5ab228792354f0f26419a973777c700"
  end
  resource "pyobjc-framework-VideoToolbox" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/33/45/f3bf7ebc231abb84a57fd5125850883380ea9a7cbb5f1c218cc7a8a3c386/pyobjc_framework_videotoolbox-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "49f12920f8a7ed85c110145dd628b38d387319a2b7cd399e70b5359aa8724614"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/33/45/f3bf7ebc231abb84a57fd5125850883380ea9a7cbb5f1c218cc7a8a3c386/pyobjc_framework_videotoolbox-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "49f12920f8a7ed85c110145dd628b38d387319a2b7cd399e70b5359aa8724614"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/33/45/f3bf7ebc231abb84a57fd5125850883380ea9a7cbb5f1c218cc7a8a3c386/pyobjc_framework_videotoolbox-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "49f12920f8a7ed85c110145dd628b38d387319a2b7cd399e70b5359aa8724614"
    else
      url "https://files.pythonhosted.org/packages/33/45/f3bf7ebc231abb84a57fd5125850883380ea9a7cbb5f1c218cc7a8a3c386/pyobjc_framework_videotoolbox-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "49f12920f8a7ed85c110145dd628b38d387319a2b7cd399e70b5359aa8724614"
    end
  end
  resource "pyobjc-framework-Virtualization" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e8/c8/8fa0b9ca53e7ab283d65c0ecde625344e55c493f2b31f330944171c119ec/pyobjc_framework_virtualization-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "365f797477eec5cc79f076e7a986937ff54d2ca1a136b4e0bb0fcac4bfa888aa"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e8/c8/8fa0b9ca53e7ab283d65c0ecde625344e55c493f2b31f330944171c119ec/pyobjc_framework_virtualization-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "365f797477eec5cc79f076e7a986937ff54d2ca1a136b4e0bb0fcac4bfa888aa"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e8/c8/8fa0b9ca53e7ab283d65c0ecde625344e55c493f2b31f330944171c119ec/pyobjc_framework_virtualization-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "365f797477eec5cc79f076e7a986937ff54d2ca1a136b4e0bb0fcac4bfa888aa"
    else
      url "https://files.pythonhosted.org/packages/e8/c8/8fa0b9ca53e7ab283d65c0ecde625344e55c493f2b31f330944171c119ec/pyobjc_framework_virtualization-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "365f797477eec5cc79f076e7a986937ff54d2ca1a136b4e0bb0fcac4bfa888aa"
    end
  end
  resource "pyobjc-framework-Vision" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/20/f3/3f87679134adab71b2366c5349fe3a68eb2edcf5ff62fcb872855243e6e2/pyobjc_framework_vision-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b6d12bcb96d711a4b5d1743aa7b1af7dec9e2f840b0e5ec200aed262da3fb587"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/20/f3/3f87679134adab71b2366c5349fe3a68eb2edcf5ff62fcb872855243e6e2/pyobjc_framework_vision-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b6d12bcb96d711a4b5d1743aa7b1af7dec9e2f840b0e5ec200aed262da3fb587"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/20/f3/3f87679134adab71b2366c5349fe3a68eb2edcf5ff62fcb872855243e6e2/pyobjc_framework_vision-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b6d12bcb96d711a4b5d1743aa7b1af7dec9e2f840b0e5ec200aed262da3fb587"
    else
      url "https://files.pythonhosted.org/packages/20/f3/3f87679134adab71b2366c5349fe3a68eb2edcf5ff62fcb872855243e6e2/pyobjc_framework_vision-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "b6d12bcb96d711a4b5d1743aa7b1af7dec9e2f840b0e5ec200aed262da3fb587"
    end
  end
  resource "pyobjc-framework-WebKit" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/00/e1/12288f728e2862d7932a1b21aa5a059ae67708900e4f0873c88053edb761/pyobjc_framework_webkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6cba6e76e33c62369d0fa8cb4b83959db4c53888173cb3546a15cd998c8e8aec"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/00/e1/12288f728e2862d7932a1b21aa5a059ae67708900e4f0873c88053edb761/pyobjc_framework_webkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6cba6e76e33c62369d0fa8cb4b83959db4c53888173cb3546a15cd998c8e8aec"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/00/e1/12288f728e2862d7932a1b21aa5a059ae67708900e4f0873c88053edb761/pyobjc_framework_webkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6cba6e76e33c62369d0fa8cb4b83959db4c53888173cb3546a15cd998c8e8aec"
    else
      url "https://files.pythonhosted.org/packages/00/e1/12288f728e2862d7932a1b21aa5a059ae67708900e4f0873c88053edb761/pyobjc_framework_webkit-12.2-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "6cba6e76e33c62369d0fa8cb4b83959db4c53888173cb3546a15cd998c8e8aec"
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
