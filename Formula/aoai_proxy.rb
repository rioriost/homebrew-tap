class AoaiProxy < Formula
  include Language::Python::Virtualenv

  desc "OpenAI-compatible proxy for Azure OpenAI using Entra ID authentication"
  homepage "https://github.com/rioriost/aoai_proxy"
  url "https://github.com/rioriost/aoai_proxy/releases/download/0.1.10/aoai_proxy-0.1.10.tar.gz"
  sha256 "1cbff53d6ac01da38e08882efb2b65d5d703d1e3242247887dce5bae86cd7f2f"
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
    url "https://files.pythonhosted.org/packages/7e/d6/8ebcd05b01a580f086ac9a97fb9fac65c09a4b012161cc97c21a336e880b/azure_core-1.39.0-py3-none-any.whl"
    sha256 "4ac7b70fab5438c3f68770649a78daf97833caa83827f91df9c14e0e0ea7d34f"
  end
  resource "azure-identity" do
    url "https://files.pythonhosted.org/packages/49/9a/417b3a533e01953a7c618884df2cb05a71e7b68bdbce4fbdb62349d2a2e8/azure_identity-1.25.3-py3-none-any.whl"
    sha256 "f4d0b956a8146f30333e071374171f3cfa7bdb8073adb8c3814b65567aa7447c"
  end
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9a/3c/c17fb3ca2d9c3acff52e30b309f538586f9f5b9c9cf454f3845fc9af4881/certifi-2026.2.25-py3-none-any.whl"
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
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
    url "https://files.pythonhosted.org/packages/e4/20/71885d8b97d4f3dde17b1fdb92dbd4908b00541c5a3379787137285f602e/click-8.3.2-py3-none-any.whl"
    sha256 "1924d2c27c5653561cd2cae4548d1406039cb79b858b747cfea24924bbc1616d"
  end
  resource "cryptography" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/0b/5d/4a8f770695d73be252331e60e526291e3df0c9b27556a90a6b47bccca4c2/cryptography-46.0.7-cp311-abi3-macosx_10_9_universal2.whl"
      sha256 "ea42cbe97209df307fdc3b155f1b6fa2577c0defa8f1f7d3be7d31d189108ad4"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/0b/5d/4a8f770695d73be252331e60e526291e3df0c9b27556a90a6b47bccca4c2/cryptography-46.0.7-cp311-abi3-macosx_10_9_universal2.whl"
      sha256 "ea42cbe97209df307fdc3b155f1b6fa2577c0defa8f1f7d3be7d31d189108ad4"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4a/9a/1765afe9f572e239c3469f2cb429f3ba7b31878c893b246b4b2994ffe2fe/cryptography-46.0.7-cp311-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "5ad9ef796328c5e3c4ceed237a183f5d41d21150f972455a9d926593a1dcb308"
    else
      url "https://files.pythonhosted.org/packages/0b/5d/4a8f770695d73be252331e60e526291e3df0c9b27556a90a6b47bccca4c2/cryptography-46.0.7-cp311-abi3-macosx_10_9_universal2.whl"
      sha256 "ea42cbe97209df307fdc3b155f1b6fa2577c0defa8f1f7d3be7d31d189108ad4"
    end
  end
  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/84/a4/5caa2de7f917a04ada20018eccf60d6cc6145b0199d55ca3711b0fc08312/fastapi-0.135.3-py3-none-any.whl"
    sha256 "9b0f590c813acd13d0ab43dd8494138eb58e484bfac405db1f3187cfc5810d98"
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
  resource "msal" do
    url "https://files.pythonhosted.org/packages/96/86/16815fddf056ca998853c6dc525397edf0b43559bb4073a80d2bc7fe8009/msal-1.35.1-py3-none-any.whl"
    sha256 "8f4e82f34b10c19e326ec69f44dc6b30171f2f7098f3720ea8a9f0c11832caa3"
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
    url "https://files.pythonhosted.org/packages/5a/87/b70ad306ebb6f9b585f114d0ac2137d792b48be34d732d60e597c2f8465a/pydantic-2.12.5-py3-none-any.whl"
    sha256 "e561593fccf61e8a20fc46dfc2dfe075b8be7d0188df33f221ad1f0139180f9d"
  end
  resource "pydantic-core" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/aa/32/9c2e8ccb57c01111e0fd091f236c7b371c1bccea0fa85247ac55b1e2b6b6/pydantic_core-2.41.5-cp312-cp312-macosx_11_0_arm64.whl"
      sha256 "070259a8818988b9a84a449a2a7337c7f430a22acc0859c6b110aa7212a6d9c0"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/5f/5d/5f6c63eebb5afee93bcaae4ce9a898f3373ca23df3ccaef086d0233a35a7/pydantic_core-2.41.5-cp312-cp312-macosx_10_12_x86_64.whl"
      sha256 "f41a7489d32336dbf2199c8c0a215390a751c5b014c2c1c5366e817202e9cdf7"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/0d/76/941cc9f73529988688a665a5c0ecff1112b3d95ab48f81db5f7606f522d3/pydantic_core-2.41.5-cp312-cp312-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "eceb81a8d74f9267ef4081e246ffd6d129da5d87e37a77c9bde550cb04870c1c"
    else
      url "https://files.pythonhosted.org/packages/aa/32/9c2e8ccb57c01111e0fd091f236c7b371c1bccea0fa85247ac55b1e2b6b6/pydantic_core-2.41.5-cp312-cp312-macosx_11_0_arm64.whl"
      sha256 "070259a8818988b9a84a449a2a7337c7f430a22acc0859c6b110aa7212a6d9c0"
    end
  end
  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/00/4b/ccc026168948fec4f7555b9164c724cf4125eac006e176541483d2c959be/pydantic_settings-2.13.1-py3-none-any.whl"
    sha256 "d56fd801823dbeae7f0975e1f8c8e25c258eb75d278ea7abb5d9cebb01b56237"
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
    url "https://files.pythonhosted.org/packages/b7/23/a5bbd9600dd607411fa644c06ff4951bec3a4d82c4b852374024359c19c0/uvicorn-0.44.0-py3-none-any.whl"
    sha256 "ce937c99a2cc70279556967274414c087888e8cec9f9c94644dfca11bd3ced89"
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
