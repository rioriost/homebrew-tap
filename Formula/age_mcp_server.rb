class AgeMcpServer < Formula
  include Language::Python::Virtualenv

  desc "Apache AGE MCP Server"
  homepage "https://github.com/rioriost/age_mcp_server"
  url "https://github.com/rioriost/age_mcp_server/releases/download/0.2.50/age_mcp_server-0.2.50.tar.gz"
  sha256 "f73d69b74eaaab060419d988323bb7fa3f88226fd652f1ec4e3d1575821783a1"
  license "MIT"

  depends_on "python@3.13"
  resource "agefreighter" do
    url "https://files.pythonhosted.org/packages/27/f2/3aa26243b7d4615fd2d6b6a2d2bc9614a4780340bcf48265343e4cdeda34/agefreighter-1.0.33-py3-none-any.whl"
    sha256 "4cb593e45b953f68a1073bd5a0cfe64779e5ea81b19f87bd0aeba04b854f10d4"
  end
  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/bc/8a/340a1555ae33d7354dbca4faa54948d76d89a27ceef032c8c3bc661d003e/aiofiles-25.1.0-py3-none-any.whl"
    sha256 "abe311e527c862958650f9438e859c1fa7568a141b22abcd015e120e86a85695"
  end
  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end
  resource "anyio" do
    url "https://files.pythonhosted.org/packages/da/42/e921fccf5015463e32a3cf6ee7f980a6ed0f395ceeaa45060b61d86486c2/anyio-4.13.0-py3-none-any.whl"
    sha256 "08b310f9e24a9594186fd75b4f73f4a4152069e3853f1ed8bfbf58369f4ad708"
  end
  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/74/f5/9373290775639cb67a2fce7f629a1c240dce9f12fe927bc32b2736e16dfc/argcomplete-3.6.3-py3-none-any.whl"
    sha256 "f5007b3a600ccac5d25bbce33089211dfd49eab4a7718da3f10e3082525a92ce"
  end
  resource "attrs" do
    url "https://files.pythonhosted.org/packages/64/b4/17d4b0b2a2dc85a6df63d1157e028ed19f90d4cd97c36717afef2bc2f395/attrs-26.1.0-py3-none-any.whl"
    sha256 "c647aa4a12dfbad9333ca4e71fe62ddc36f4e63b2d260a37a8b83d2f043ac309"
  end
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/59/8c/57e832b7af6d7c5abe66eb3fbe3a3a32f4d11ea23a1aa7131371035be991/certifi-2026.5.20-py3-none-any.whl"
    sha256 "3c52e209ba0a4ad7aebe60436a4ab349c39e1e602e8c134221e546902ad25897"
  end
  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0d/67e5b4109ea4a837e80daa87c2c696711955e40449a97e8926672534def2/click-8.4.1-py3-none-any.whl"
    sha256 "482be17c6991b8c19c5429a1e995d9b0efdbb63172824c41f99965dc0ade8ec2"
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
  resource "httpx-sse" do
    url "https://files.pythonhosted.org/packages/d2/fd/6668e5aec43ab844de6fc74927e155a3b37bf40d7c3790e49fc0406b6578/httpx_sse-0.4.3-py3-none-any.whl"
    sha256 "0ac1c9fe3c0afad2e0ebb25a934a59f4c7823b60792691f779fad2c5568830fc"
  end
  resource "idna" do
    url "https://files.pythonhosted.org/packages/de/a7/f76514cc40ad6234098ecdebda08732d75964776c51a42845b7da10649e2/idna-3.17-py3-none-any.whl"
    sha256 "466e48829084efe2548012b855df21540b96f2e20e51bd124c851536556a592c"
  end
  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/69/90/f63fb5873511e014207a475e2bb4e8b2e570d655b00ac19a9a0ca0a385ee/jsonschema-4.26.0-py3-none-any.whl"
    sha256 "d489f15263b8d200f8387e64b4c3a75f06629559fb73deb8fdfb525f2dab50ce"
  end
  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/41/45/1a4ed80516f02155c51f51e8cedb3c1902296743db0bbc66608a0db2814f/jsonschema_specifications-2025.9.1-py3-none-any.whl"
    sha256 "98802fee3a11ee76ecaca44429fda8a41bff98b00a0f2838151b113f210cc6fe"
  end
  resource "mcp" do
    url "https://files.pythonhosted.org/packages/c9/11/252c6f971dc4f16af1d98a1c469d8ba523aab00d1bb76b4d3bc1ff32eacc/mcp-1.27.2-py3-none-any.whl"
    sha256 "d6ff5160c6ca65d93013626efb3fc249de683c30b2d8570755ceddd490344de5"
  end
  resource "numpy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/1b/30/a80189bcc7f5e4258b3fbc3968d909d1756f54d023299ecc39ad6fdb9ef8/numpy-2.4.6-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "bf162abab1c1a736333192707cef898e735a5ca00f38f27eeedf44b39d9e85eb"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/fb/82/bdab26d7438c6791ca31b7c024ca37c1eab8b726ba236129005cd4a06e45/numpy-2.4.6-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "511dbaf848decaaaf4b4ca48032619fb3138710c4bf7da7617765edad1ef96b0"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/a5/9d/3584b9984ca4c047aea75214ce1a4c4c73d849bd71b604264b7f5653f8a8/numpy-2.4.6-cp313-cp313-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "a7830bab239b79cda9c08c2da014761cafb48da6150e1da17ac06283f43b6089"
    else
      url "https://files.pythonhosted.org/packages/1b/30/a80189bcc7f5e4258b3fbc3968d909d1756f54d023299ecc39ad6fdb9ef8/numpy-2.4.6-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "bf162abab1c1a736333192707cef898e735a5ca00f38f27eeedf44b39d9e85eb"
    end
  end
  resource "ply" do
    url "https://files.pythonhosted.org/packages/a3/58/35da89ee790598a0700ea49b2a66594140f44dec458c07e8e3d4979137fc/ply-3.11-py2.py3-none-any.whl"
    sha256 "096f9b8350b65ebd2fd1346b12452efe5b9607f7482813ffca50c22722a807ce"
  end
  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/5c/e0/7b3dee031daae7743609ce3c746565d4a3ed7c2c186479eb48e34e838c64/psycopg-3.3.4-py3-none-any.whl"
    sha256 "b6bbc25ccf05c8fad3b061d9db2ef0909a555171b84b07f29458a447253d679a"
  end
  resource "psycopg-pool" do
    url "https://files.pythonhosted.org/packages/37/ed/89c2c620af0e1660354cd8aabf9f5b21f911597ce22acb37c805d6c86bc8/psycopg_pool-3.3.1-py3-none-any.whl"
    sha256 "2af5b432941c4c9ad5c87b3fa410aec910ec8f7c122855897983a06c45f2e4b5"
  end
  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/fd/7b/122376b1fd3c62c1ed9dc80c931ace4844b3c55407b6fb2d199377c9736f/pydantic-2.13.4-py3-none-any.whl"
    sha256 "45a282cde31d808236fd7ea9d919b128653c8b38b393d1c4ab335c62924d9aba"
  end
  resource "pydantic-core" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c1/81/4fa520eaffa8bd7d1525e644cd6d39e7d60b1592bc5b516693c7340b50f1/pydantic_core-2.46.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "c94f0688e7b8d0a67abf40e57a7eaaecd17cc9586706a31b76c031f63df052b4"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/51/a2/5d30b469c5267a17b39dec53208222f76a8d351dfac4af661888c5aee77d/pydantic_core-2.46.4-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "5d5902252db0d3cedf8d4a1bc68f70eeb430f7e4c7104c8c476753519b423008"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/07/f8/41db9de19d7987d6b04715a02b3b40aea467000275d9d758ffaa31af7d50/pydantic_core-2.46.4-cp313-cp313-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "9551187363ffc0de2a00b2e47c25aeaeb1020b69b668762966df15fc5659dd5a"
    else
      url "https://files.pythonhosted.org/packages/c1/81/4fa520eaffa8bd7d1525e644cd6d39e7d60b1592bc5b516693c7340b50f1/pydantic_core-2.46.4-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "c94f0688e7b8d0a67abf40e57a7eaaecd17cc9586706a31b76c031f63df052b4"
    end
  end
  resource "pydantic-settings" do
    url "https://files.pythonhosted.org/packages/ae/8d/f1af3832f5e6eb13ba94ee809e72b8ecb5eef226d27ee0bef7d963d943c7/pydantic_settings-2.14.1-py3-none-any.whl"
    sha256 "6e3c7edfd8277687cdc598f56e5cff0e9bfff0910a3749deaa8d4401c3a2b9de"
  end
  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/0b/d7/1959b9648791274998a9c3526f6d0ec8fd2233e4d4acce81bbae76b44b2a/python_dotenv-1.2.2-py3-none-any.whl"
    sha256 "1d8214789a24de455a8b8bd8ae6fe3c6b69a5e3d64aa8a8e5d68e694bbcb285a"
  end
  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/8f/cb/769cfc37177252872a45a71f3fbdde9d51b471a3f3c14bfe95dde3407386/python_multipart-0.0.29-py3-none-any.whl"
    sha256 "2ddcc971cef266225f54f552d8fa10bcfbb1f14446caec199060daac59ff2d69"
  end
  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2c/58/ca301544e1fa93ed4f80d724bf5b194f6e4b945841c5bfd555878eea9fcb/referencing-0.37.0-py3-none-any.whl"
    sha256 "381329a9f99628c9069361716891d34ad94af76e461dcb0335825aecc7692231"
  end
  resource "rpds-py" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ca/bb/d1b85117967c11191441a7274ae616c65d93901d082c588f89a50a8da5ae/rpds_py-2026.5.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "c39f5b67a8a2e67179ada2a954227d670fe65fa9098457f698f56ddf248709b3"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/6c/32/14c961ad295f490eb0849ada8b79683e93a59b9de3afdd983eaf55fa6867/rpds_py-2026.5.1-cp313-cp313-macosx_10_12_x86_64.whl"
      sha256 "efef4ac29c6ff495531eb17ee705b62841ecaa291b7c7077e848ea03e237164d"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4b/25/05678d97fc25e2622df14dc530fb82023174ecfff6733991ed0d78f167bd/rpds_py-2026.5.1-cp313-cp313-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "b1b964e3ab599e718dc46c018d104b1ebc007cbc6567d827c94a687fca56d77e"
    else
      url "https://files.pythonhosted.org/packages/ca/bb/d1b85117967c11191441a7274ae616c65d93901d082c588f89a50a8da5ae/rpds_py-2026.5.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "c39f5b67a8a2e67179ada2a954227d670fe65fa9098457f698f56ddf248709b3"
    end
  end
  resource "shtab" do
    url "https://files.pythonhosted.org/packages/8e/e1/202a31727b0d096a04380f78e809074d7a1d0a22d9d5a39fea1d2353fd02/shtab-1.8.0-py3-none-any.whl"
    sha256 "f0922a82174b4007e06ac0bac4f79abd826c5cca88e201bfd927f889803c571d"
  end
  resource "sse-starlette" do
    url "https://files.pythonhosted.org/packages/dc/67/805710444ea8cc75fbf70b920ed431a560c4bf9c57f7d5a3117213189399/sse_starlette-3.4.4-py3-none-any.whl"
    sha256 "3f4dd50d8aed2771a091f3a83000323fc3844541c16b4fe585ae2420cc6df973"
  end
  resource "starlette" do
    url "https://files.pythonhosted.org/packages/1c/54/196d0c1db10af76baa4f64894448505d60d3cdf70ef92cbb35f46a4e4c71/starlette-1.2.1-py3-none-any.whl"
    sha256 "4de0082d08c8f6764a85a54cf1120d6939507a19905c7768acad2a9f875d2b89"
  end
  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end
  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end
  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/01/be/72532be3da7acc5fdfbccdb95215cd04f995a0886532a5b423f929cda4cc/uvicorn-0.48.0-py3-none-any.whl"
    sha256 "48097851328b87ec36117d3d575234519eb58c2b22d79666e9bbc6c49a761dad"
  end

  def install
    if OS.mac?
      ENV.append "LDFLAGS", "-Wl,-headerpad_max_install_names"
      ENV.append "RUSTFLAGS", "-C link-arg=-Wl,-headerpad_max_install_names"
    end

    venv = virtualenv_create(libexec, "python3.13")

    resource("agefreighter").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("aiofiles").stage do
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

    resource("argcomplete").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("attrs").stage do
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

    resource("click").stage do
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

    resource("httpx-sse").stage do
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

    resource("jsonschema").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("jsonschema-specifications").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("mcp").stage do
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

    resource("ply").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("psycopg").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("psycopg-pool").stage do
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

    resource("python-multipart").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("referencing").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("rpds-py").stage do
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

    resource("shtab").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("sse-starlette").stage do
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

    resource("uvicorn").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/age_mcp_server"
  end

  test do
    system "#{bin}/age_mcp_server", "--help"
  end
end
