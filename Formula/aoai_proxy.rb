class AoaiProxy < Formula
  include Language::Python::Virtualenv

  desc "OpenAI-compatible proxy for Azure OpenAI using Entra ID authentication"
  homepage "https://github.com/rioriost/aoai_proxy"
  url "https://github.com/rioriost/aoai_proxy/releases/download/0.1.11/aoai_proxy-0.1.11.tar.gz"
  sha256 "c0a1776b0236958a513b8b0db7511952254dc75b5feb0c07c32a2ab0fd37f259"
  license "MIT"

  depends_on "python@3.12"
  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/1e/d3/26bf1008eb3d2daa8ef4cacc7f3bfdc11818d111f7e2d0201bc6e3b49d45/annotated_doc-0.0.4-py3-none-any.whl"
    sha256 "571ac1dc6991c450b25a9c2d84a3705e2ae7a53467b5d111c24fa8baabbed320"
  end
  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end
  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/42/e921fccf5015463e32a3cf6ee7f980a6ed0f395ceeaa45060b61d86486c2/anyio-4.13.0-py3-none-any.whl"
    sha256 "08b310f9e24a9594186fd75b4f73f4a4152069e3853f1ed8bfbf58369f4ad708"
  end
  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/ec/c9/25edc67692fb17523c7d29c73898be649b4d3c7ae13cc0f74f5c91938022/azure_core-1.40.0-py3-none-any.whl"
    sha256 "7f3ea02579b1bb1d34e45043423b650621d11d7c2ea3b05e5554010080b78dfd"
  end
  resource "azure-identity" do
    url "https://files.pythonhosted.org/packages/49/9a/417b3a533e01953a7c618884df2cb05a71e7b68bdbce4fbdb62349d2a2e8/azure_identity-1.25.3-py3-none-any.whl"
    sha256 "f4d0b956a8146f30333e071374171f3cfa7bdb8073adb8c3814b65567aa7447c"
  end
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/22/30/7cd8fdcdfbc5b869528b079bfb76dcdf6056b1a2097a662e5e8c04f42965/certifi-2026.4.22-py3-none-any.whl"
    sha256 "3cb2210c8f88ba2318d29b0388d1023c8492ff72ecdde4ebdaddbb13a31b1c4a"
  end
  resource "cffi" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/df/a2/781b623f57358e360d62cdd7a8c681f074a71d445418a776eef0aadb4ab4/cffi-2.0.0-cp312-cp312-macosx_11_0_arm64.whl"
      sha256 "8eca2a813c1cb7ad4fb74d368c2ffbbb4789d377ee5bb8df98373c2cc0dee76c"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ea/47/4f61023ea636104d4f16ab488e268b93008c3d0bb76893b1b31db1f96802/cffi-2.0.0-cp312-cp312-macosx_10_13_x86_64.whl"
      sha256 "6d02d6655b0e54f54c4ef0b94eb6be0607b70853c45ce98bd278dc7de718be5d"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/78/2d/7fa73dfa841b5ac06c7b8855cfc18622132e365f5b81d02230333ff26e9e/cffi-2.0.0-cp312-cp312-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "3e17ed538242334bf70832644a32a7aae3d83b57567f9fd60a26257e992b79ba"
    else
      url "https://files.pythonhosted.org/packages/df/a2/781b623f57358e360d62cdd7a8c681f074a71d445418a776eef0aadb4ab4/cffi-2.0.0-cp312-cp312-macosx_11_0_arm64.whl"
      sha256 "8eca2a813c1cb7ad4fb74d368c2ffbbb4789d377ee5bb8df98373c2cc0dee76c"
    end
  end
  resource "charset_normalizer" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/0c/eb/4fc8d0a7110eb5fc9cc161723a34a8a6c200ce3b4fbf681bc86feee22308/charset_normalizer-3.4.7-cp312-cp312-macosx_10_13_universal2.whl"
      sha256 "eca9705049ad3c7345d574e3510665cb2cf844c2f2dcfe675332677f081cbd46"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/0c/eb/4fc8d0a7110eb5fc9cc161723a34a8a6c200ce3b4fbf681bc86feee22308/charset_normalizer-3.4.7-cp312-cp312-macosx_10_13_universal2.whl"
      sha256 "eca9705049ad3c7345d574e3510665cb2cf844c2f2dcfe675332677f081cbd46"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4b/f8/d0118a2f5f23b02cd166fa385c60f9b0d4f9194f574e2b31cef350ad7223/charset_normalizer-3.4.7-cp312-cp312-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "5649fd1c7bade02f320a462fdefd0b4bd3ce036065836d4f42e0de958038e116"
    else
      url "https://files.pythonhosted.org/packages/0c/eb/4fc8d0a7110eb5fc9cc161723a34a8a6c200ce3b4fbf681bc86feee22308/charset_normalizer-3.4.7-cp312-cp312-macosx_10_13_universal2.whl"
      sha256 "eca9705049ad3c7345d574e3510665cb2cf844c2f2dcfe675332677f081cbd46"
    end
  end
  resource "click" do
    url "https://files.pythonhosted.org/packages/ae/44/c1221527f6a71a01ec6fbad7fa78f1d50dfa02217385cf0fa3eec7087d59/click-8.3.3-py3-none-any.whl"
    sha256 "a2bf429bb3033c89fa4936ffb35d5cb471e3719e1f3c8a7c3fff0b8314305613"
  end
  resource "cryptography" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a4/98/40dfe932134bdcae4f6ab5927c87488754bf9eb79297d7e0070b78dd58e9/cryptography-47.0.0-cp311-abi3-macosx_10_9_universal2.whl"
      sha256 "160ad728f128972d362e714054f6ba0067cab7fb350c5202a9ae8ae4ce3ef1a0"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/a4/98/40dfe932134bdcae4f6ab5927c87488754bf9eb79297d7e0070b78dd58e9/cryptography-47.0.0-cp311-abi3-macosx_10_9_universal2.whl"
      sha256 "160ad728f128972d362e714054f6ba0067cab7fb350c5202a9ae8ae4ce3ef1a0"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/00/e3/b27be1a670a9b87f855d211cf0e1174a5d721216b7616bd52d8581d912ed/cryptography-47.0.0-cp311-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "f5c15764f261394b22aef6b00252f5195f46f2ca300bec57149474e2538b31f8"
    else
      url "https://files.pythonhosted.org/packages/a4/98/40dfe932134bdcae4f6ab5927c87488754bf9eb79297d7e0070b78dd58e9/cryptography-47.0.0-cp311-abi3-macosx_10_9_universal2.whl"
      sha256 "160ad728f128972d362e714054f6ba0067cab7fb350c5202a9ae8ae4ce3ef1a0"
    end
  end
  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/5a/ff/2e4eca3ade2c22fe1dea7043b8ee9dabe47753349eb1b56a202de8af6349/fastapi-0.136.1-py3-none-any.whl"
    sha256 "a6e9d7eeada96c93a4d69cb03836b44fa34e2854accb7244a1ece36cd4781c3f"
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
    url "https://files.pythonhosted.org/packages/5d/13/ad7d7ca3808a898b4612b6fe93cde56b53f3034dcde235acb1f0e1df24c6/idna-3.13-py3-none-any.whl"
    sha256 "892ea0cde124a99ce773decba204c5552b69c3c67ffd5f232eb7696135bc8bb3"
  end
  resource "msal" do
    url "https://files.pythonhosted.org/packages/2a/d3/414d1f0a5f6f4fe5313c2b002c54e78a3332970feb3f5fed14237aa17064/msal-1.36.0-py3-none-any.whl"
    sha256 "36ecac30e2ff4322d956029aabce3c82301c29f0acb1ad89b94edcabb0e58ec4"
  end
  resource "msal-extensions" do
    url "https://files.pythonhosted.org/packages/5e/75/bd9b7bb966668920f06b200e84454c8f3566b102183bc55c5473d96cb2b9/msal_extensions-1.3.1-py3-none-any.whl"
    sha256 "96d3de4d034504e969ac5e85bae8106c8373b5c6568e4c8fa7af2eca9dbe6bca"
  end
  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0c/c3/44f3fbbfa403ea2a7c779186dc20772604442dde72947e7d01069cbe98e3/pycparser-3.0-py3-none-any.whl"
    sha256 "b727414169a36b7d524c1c3e31839a521725078d7b2ff038656844266160a992"
  end
  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/f3/0a/fd7d723f8f8153418fb40cf9c940e82004fce7e987026b08a68a36dd3fe7/pydantic-2.13.3-py3-none-any.whl"
    sha256 "6db14ac8dfc9a1e57f87ea2c0de670c251240f43cb0c30a5130e9720dc612927"
  end
  resource "pydantic-core" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a1/4f/2fb62c2267cae99b815bbf4a7b9283812c88ca3153ef29f7707200f1d4e5/pydantic_core-2.46.3-cp312-cp312-macosx_11_0_arm64.whl"
      sha256 "af8653713055ea18a3abc1537fe2ebc42f5b0bbb768d1eb79fd74eb47c0ac089"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/4b/cb/5b47425556ecc1f3fe18ed2a0083188aa46e1dd812b06e406475b3a5d536/pydantic_core-2.46.3-cp312-cp312-macosx_10_12_x86_64.whl"
      sha256 "b11b59b3eee90a80a36701ddb4576d9ae31f93f05cb9e277ceaa09e6bf074a67"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/5e/d5/e3d9717c9eba10855325650afd2a9cba8e607321697f18953af9d562da2f/pydantic_core-2.46.3-cp312-cp312-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "fb528e295ed31570ac3dcc9bfdd6e0150bc11ce6168ac87a8082055cf1a67395"
    else
      url "https://files.pythonhosted.org/packages/a1/4f/2fb62c2267cae99b815bbf4a7b9283812c88ca3153ef29f7707200f1d4e5/pydantic_core-2.46.3-cp312-cp312-macosx_11_0_arm64.whl"
      sha256 "af8653713055ea18a3abc1537fe2ebc42f5b0bbb768d1eb79fd74eb47c0ac089"
    end
  end
  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/01/dd/bebff3040138f00ae8a102d426b27349b9a49acc310fcae7f92112d867e3/pydantic_settings-2.14.0-py3-none-any.whl"
    sha256 "fc8d5d692eb7092e43c8647c1c35a3ecd00e040fcf02ed86f4cb5458ca62182e"
  end
  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/0b/d7/1959b9648791274998a9c3526f6d0ec8fd2233e4d4acce81bbae76b44b2a/python_dotenv-1.2.2-py3-none-any.whl"
    sha256 "1d8214789a24de455a8b8bd8ae6fe3c6b69a5e3d64aa8a8e5d68e694bbcb285a"
  end
  resource "requests" do
    url "https://files.pythonhosted.org/packages/d7/8e/7540e8a2036f79a125c1d2ebadf69ed7901608859186c856fa0388ef4197/requests-2.33.1-py3-none-any.whl"
    sha256 "4e6d1ef462f3626a1f0a0a9c42dd93c63bad33f9f1c1937509b8c5c8718ab56a"
  end
  resource "starlette" do
    url "https://files.pythonhosted.org/packages/0b/c9/584bc9651441b4ba60cc4d557d8a547b5aff901af35bda3a4ee30c819b82/starlette-1.0.0-py3-none-any.whl"
    sha256 "d3ec55e0bb321692d275455ddfd3df75fff145d009685eb40dc91fc66b03d38b"
  end
  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end
  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end
  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/39/08/aaaad47bc4e9dc8c725e68f9d04865dbcb2052843ff09c97b08904852d84/urllib3-2.6.3-py3-none-any.whl"
    sha256 "bf272323e553dfb2e87d9bfd225ca7b0f467b919d7bbd355436d3fd37cb0acd4"
  end
  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/31/a3/5b1562db76a5a488274b2332a97199b32d0442aca0ed193697fd47786316/uvicorn-0.46.0-py3-none-any.whl"
    sha256 "bbebbcbed972d162afca128605223022bedd345b7bc7855ce66deb31487a9048"
  end

  def install
    if OS.mac?
      ENV.append "LDFLAGS", "-Wl,-headerpad_max_install_names"
      ENV.append "RUSTFLAGS", "-C link-arg=-Wl,-headerpad_max_install_names"
    end

    venv = virtualenv_create(libexec, "python3.12")

    resource("annotated-doc").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

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

    resource("azure-core").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("azure-identity").stage do
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

    resource("cffi").stage do
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

    resource("click").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("cryptography").stage do
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

    resource("fastapi").stage do
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

    resource("msal").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("msal-extensions").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pycparser").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
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

    resource("pydantic-settings").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("python-dotenv").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
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

    resource("starlette").stage do
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

    resource("urllib3").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("uvicorn").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/aoai_proxy"
  end

  test do
    system "#{bin}/aoai_proxy", "--help"
  end
end
