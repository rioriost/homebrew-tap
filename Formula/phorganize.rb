class Phorganize < Formula
  include Language::Python::Virtualenv

  desc "Phorganize is a python script to organize photos and videos using embedded meta data in the files."
  homepage "https://github.com/rioriost/phorganize/"
  url "https://files.pythonhosted.org/packages/ca/7c/69cea08dbb557204407de9f24c2764ca7b3817f37976593d171f86475a9e/phorganize-0.1.4.tar.gz"
  sha256 "88246cdece37d22a92f8c678abc16ded62e00b544f08b5f327cc79b12148ec4a"
  license "MIT"

  depends_on "python@3.11"

  resource "python-magic" do
    url "https://files.pythonhosted.org/packages/da/db/0b3e28ac047452d079d375ec6798bf76a036a08182dbb39ed38116a49130/python-magic-0.4.27.tar.gz"
    sha256 "c1ba14b08e4a5f5c31a302b7721239695b2f0f058d125bd5ce1ee36b9d9d3c3b"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/phorganize", "--help"
  end
end
