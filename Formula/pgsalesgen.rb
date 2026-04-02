class Pgsalesgen < Formula
  include Language::Python::Virtualenv

  desc "Generate sales data for PostgreSQL"
  homepage "https://github.com/rioriost/pgsalesgen"
  url "https://github.com/rioriost/pgsalesgen/releases/download/0.1.5/pgsalesgen-0.1.5.tar.gz"
  sha256 "e93c728a07e77e80bd77396b30c6aa20fbed8e45a4f396417b737d038969478e"
  license "MIT"

  depends_on "python@3.14"
  resource "numpy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/4c/39/8a320264a84404c74cc7e79715de85d6130fa07a0898f67fb5cd5bd79908/numpy-2.4.4-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "2483e4584a1cb3092da4470b38866634bafb223cbcd551ee047633fd2584599a"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/6e/06/c54062f85f673dd5c04cbe2f14c3acb8c8b95e3384869bb8cc9bff8cb9df/numpy-2.4.4-cp314-cp314-macosx_10_15_x86_64.whl"
      sha256 "f169b9a863d34f5d11b8698ead99febeaa17a13ca044961aa8e2662a6c7766a0"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/98/7c/21252050676612625449b4807d6b695b9ce8a7c9e1c197ee6216c8a65c7c/numpy-2.4.4-cp314-cp314-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "27a8d92cd10f1382a67d7cf4db7ce18341b66438bdd9f691d7b0e48d104c2a9d"
    else
      url "https://files.pythonhosted.org/packages/d7/9f/b8cef5bffa569759033adda9481211426f12f53299629b410340795c2514/numpy-2.4.4.tar.gz"
      sha256 "2d390634c5182175533585cc89f3608a4682ccb173cc9bb940b2881c8d6f8fa0"
    end
  end
  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/c8/5b/181e2e3becb7672b502f0ed7f16ed7352aca7c109cfb94cf3878a9186db9/psycopg-3.3.3-py3-none-any.whl"
    sha256 "f96525a72bcfade6584ab17e89de415ff360748c766f0106959144dcbb38c698"
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
