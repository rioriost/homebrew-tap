class Pgsalesgen < Formula
  include Language::Python::Virtualenv

  desc "Generate sales data for PostgreSQL"
  homepage "https://github.com/rioriost/pgsalesgen"
  url "https://github.com/rioriost/pgsalesgen/releases/download/0.1.7/pgsalesgen-0.1.7.tar.gz"
  sha256 "233621277ad32ddccf94edd75dc0dce66fab3bf66990eb8d51c8b3a25a19613b"
  license "MIT"

  depends_on "python@3.14"
  resource "numpy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/8e/62/764ce66fa4147ae6d73071a3abf804ffe606f174618697c571acdf26a7c9/numpy-2.4.6-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "38efbc8de75c7a0fc1ac190162d892787f3f47b57cc291231aafee36b80982b7"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/f8/91/3ab2044d05fd16d343c5ac2e69b127f1b2854040dd20b193257c78028bd3/numpy-2.4.6-cp314-cp314-macosx_10_15_x86_64.whl"
      sha256 "06ca2f61ec4385a07a6977c55ba998a4466c123642b4a32694d3128fce18c079"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/f3/eb/ebffaa97dc55502df69584a8f0dcf07f69a3e0b3e2323670a2722db9aa39/numpy-2.4.6-cp314-cp314-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "a2c306dea656c12c68f51f4cea133cbe78ca7435eb28c735eac1d3ebe73be6e8"
    else
      url "https://files.pythonhosted.org/packages/8e/62/764ce66fa4147ae6d73071a3abf804ffe606f174618697c571acdf26a7c9/numpy-2.4.6-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "38efbc8de75c7a0fc1ac190162d892787f3f47b57cc291231aafee36b80982b7"
    end
  end
  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/5c/e0/7b3dee031daae7743609ce3c746565d4a3ed7c2c186479eb48e34e838c64/psycopg-3.3.4-py3-none-any.whl"
    sha256 "b6bbc25ccf05c8fad3b061d9db2ef0909a555171b84b07f29458a447253d679a"
  end

  def install
    if OS.mac?
      ENV.append "LDFLAGS", "-Wl,-headerpad_max_install_names"
      ENV.append "RUSTFLAGS", "-C link-arg=-Wl,-headerpad_max_install_names"
    end

    venv = virtualenv_create(libexec, "python3.14")

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

    resource("psycopg").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/pgsalesgen"
  end

  test do
    system "#{bin}/pgsalesgen", "--help"
  end
end
