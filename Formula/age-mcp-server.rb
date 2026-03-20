class AgeMcpServer < Formula
  include Language::Python::Virtualenv

  desc "Apache AGE MCP Server"
  homepage "https://github.com/rioriost/age-mcp-server/"
  url "https://files.pythonhosted.org/packages/ab/25/3d27d876cb478b03b588b5271f1b9b1c1c27602ffd2dc62240bb97790f2b/age_mcp_server-0.2.45.tar.gz"
  sha256 "b5343bcf2676344333ee13f282232ab41575d7bf2d7dba6e9bfd70b000781c53"
  license "MIT"

  depends_on "python@3.13"

  resource "agefreighter" do
    url "https://files.pythonhosted.org/packages/df/22/366000df0beb89029d0bf18ecb90eccbd59ccf68fa69143966148cb9d35c/agefreighter-1.0.33.tar.gz"
    sha256 "e88f1904d549868181cb382d96223cf54ce7dd5a05acaaffe203d8478324e440"
  end

  resource "ply" do
    url "https://files.pythonhosted.org/packages/e5/69/882ee5c9d017149285cab114ebeab373308ef0f874fcdac9beb90e0ac4da/ply-3.11.tar.gz"
    sha256 "00c7c1aaa88358b9c765b6d3000c6eec0ba42abca5351b095321aef446081da3"
  end

  def install
    virtualenv_install_with_resources
    system libexec/"bin/python", "-m", "pip", "install", "psycopg[binary,pool]", "mcp"
  end

  test do
    system "#{bin}/age-mcp-server", "--help"
  end
end
