class AgeMcpServer < Formula
  include Language::Python::Virtualenv

  desc "Apache AGE MCP Server"
  homepage "https://github.com/rioriost/age-mcp-server"
  url "https://github.com/rioriost/age-mcp-server/releases/download/0.2.45/age_mcp_server-0.2.45.tar.gz"
  sha256 "b5343bcf2676344333ee13f282232ab41575d7bf2d7dba6e9bfd70b000781c53"
  license "MIT"

  depends_on "python@3.13"
  resource "agefreighter" do
    url "https://files.pythonhosted.org/packages/df/22/366000df0beb89029d0bf18ecb90eccbd59ccf68fa69143966148cb9d35c/agefreighter-1.0.33.tar.gz"
    sha256 "e88f1904d549868181cb382d96223cf54ce7dd5a05acaaffe203d8478324e440"
  end
  resource "mcp" do
    url "https://files.pythonhosted.org/packages/fc/6d/62e76bbb8144d6ed86e202b5edd8a4cb631e7c8130f3f4893c3f90262b10/mcp-1.26.0.tar.gz"
    sha256 "db6e2ef491eecc1a0d93711a76f28dec2e05999f93afd48795da1c1137142c66"
  end
  resource "ply" do
    url "https://files.pythonhosted.org/packages/e5/69/882ee5c9d017149285cab114ebeab373308ef0f874fcdac9beb90e0ac4da/ply-3.11.tar.gz"
    sha256 "00c7c1aaa88358b9c765b6d3000c6eec0ba42abca5351b095321aef446081da3"
  end
  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/d3/b6/379d0a960f8f435ec78720462fd94c4863e7a31237cf81bf76d0af5883bf/psycopg-3.3.3.tar.gz"
    sha256 "5e9a47458b3c1583326513b2556a2a9473a1001a56c9efe9e587245b43148dd9"
  end
  resource "psycopg-pool" do
    url "https://files.pythonhosted.org/packages/56/9a/9470d013d0d50af0da9c4251614aeb3c1823635cab3edc211e3839db0bcf/psycopg_pool-3.3.0.tar.gz"
    sha256 "fa115eb2860bd88fce1717d75611f41490dec6135efb619611142b24da3f6db5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/age-mcp-server", "--help"
  end
end
