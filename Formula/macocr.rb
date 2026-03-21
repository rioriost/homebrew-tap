class Macocr < Formula
  include Language::Python::Virtualenv

  desc "macocr is a python script for OCR on macOS"
  homepage "https://github.com/rioriost/macocr"
  url "https://github.com/rioriost/macocr/releases/download/0.1.16/macocr-0.1.16.tar.gz"
  sha256 "1fabbb4bd423c41a4f3ac2f81abe477c50c5dd158af81cdeaceff0f3014ca961"
  license "MIT"

  depends_on "python@3.13"
  resource "Click" do
    url "https://files.pythonhosted.org/packages/98/78/01c019cdb5d6498122777c1a43056ebb3ebfeef2076d9d026bfe15583b2b/click-8.3.1-py3-none-any.whl"
    sha256 "981153a64e25f12d547d3426c367a4857371575ee7ad18df2a6183ab0545b2a6"
  end
  resource "ocrmac" do
    url "https://files.pythonhosted.org/packages/37/15/7cc16507a2aca927abe395f1c545f17ae76b1f8ed44f43ebe4e8670ee203/ocrmac-1.0.1-py3-none-any.whl"
    sha256 "1cef25426f7ae6bbd57fe3dc5553b25461ae8ad0d2b428a9bbadbf5907349024"
  end
  resource "pillow" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/bb/ad/ad9dc98ff24f485008aa5cdedaf1a219876f6f6c42a4626c08bc4e80b120/pillow-12.1.1-cp313-cp313-macosx_11_0_arm64.whl"
      sha256 "8b7e5304e34942bf62e15184219a7b5ad4ff7f3bb5cca4d984f37df1a0e1aee2"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/14/a1/16c4b823838ba4c9c52c0e6bbda903a3fe5a1bdbf1b8eb4fff7156f3e318/pillow-12.1.1-cp313-cp313-macosx_10_13_x86_64.whl"
      sha256 "6c6db3b84c87d48d0088943bf33440e0c42370b99b1c2a7989216f7b42eede60"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/95/f4/86f51b8745070daf21fd2e5b1fe0eb35d4db9ca26e6d58366562fb56a743/pillow-12.1.1-cp313-cp313-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "fc44ef1f3de4f45b50ccf9136999d71abb99dca7706bc75d222ed350b9fd2289"
    else
      url "https://files.pythonhosted.org/packages/1f/42/5c74462b4fd957fcd7b13b04fb3205ff8349236ea74c7c375766d6c82288/pillow-12.1.1.tar.gz"
      sha256 "9ad8fa5937ab05218e2b6a4cff30295ad35afd2f83ac592e68c0d871bb0fdbc4"
    end
  end
  resource "pillow-heif" do
    url "https://files.pythonhosted.org/packages/cd/58/2df4fc42840633e01c97b75965cb1bc6e14425973b92382391650e97e4b7/pillow_heif-1.3.0.tar.gz"
    sha256 "af8d2bda85e395677d5bb50d7bda3b5655c946cc95b913b5e7222fabacbb467f"
  end
  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/b8/b6/d5612eb40be4fd5ef88c259339e6313f46ba67577a95d86c3470b951fce0/pyobjc_core-12.1.tar.gz"
    sha256 "2bb3903f5387f72422145e1466b3ac3f7f0ef2e9960afa9bcd8961c5cbf8bd21"
  end
  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/02/a3/16ca9a15e77c061a9250afbae2eae26f2e1579eb8ca9462ae2d2c71e1169/pyobjc_framework_cocoa-12.1.tar.gz"
    sha256 "5556c87db95711b985d5efdaaf01c917ddd41d148b1e52a0c66b1a2e2c5c1640"
  end
  resource "pyobjc-framework-CoreML" do
    url "https://files.pythonhosted.org/packages/30/2d/baa9ea02cbb1c200683cb7273b69b4bee5070e86f2060b77e6a27c2a9d7e/pyobjc_framework_coreml-12.1.tar.gz"
    sha256 "0d1a4216891a18775c9e0170d908714c18e4f53f9dc79fb0f5263b2aa81609ba"
  end
  resource "pyobjc-framework-Quartz" do
    url "https://files.pythonhosted.org/packages/94/18/cc59f3d4355c9456fc945eae7fe8797003c4da99212dd531ad1b0de8a0c6/pyobjc_framework_quartz-12.1.tar.gz"
    sha256 "27f782f3513ac88ec9b6c82d9767eef95a5cf4175ce88a1e5a65875fee799608"
  end
  resource "pyobjc-framework-Vision" do
    url "https://files.pythonhosted.org/packages/c2/5a/08bb3e278f870443d226c141af14205ff41c0274da1e053b72b11dfc9fb2/pyobjc_framework_vision-12.1.tar.gz"
    sha256 "a30959100e85dcede3a786c544e621ad6eb65ff6abf85721f805822b8c5fe9b0"
  end
  resource "python-magic" do
    url "https://files.pythonhosted.org/packages/6c/73/9f872cb81fc5c3bb48f7227872c28975f998f3e7c2b1c16e95e6432bbb90/python_magic-0.4.27-py2.py3-none-any.whl"
    sha256 "c212960ad306f700aa0d01e5d7a325d20548ff97eb9920dcd29513174f0294d3"
  end

  def install
    venv = virtualenv_create(libexec, "python3.13")

    resource("Click").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("ocrmac").stage do
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

    resource("pillow-heif").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-core").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Cocoa").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreML").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Quartz").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Vision").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("python-magic").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/macocr"
  end

  test do
    system "#{bin}/macocr", "--help"
  end
end
