class AgentopsMcpServer < Formula
  include Language::Python::Virtualenv

  desc "Simple MCP server for AgentOps with Zed"
  homepage "https://github.com/rioriost/agentops_mcp_server"
  url "https://github.com/rioriost/agentops_mcp_server/releases/download/0.5.4/agentops_mcp_server-0.5.4.tar.gz"
  sha256 "f5af5564dc520f01f4c7dc3977a94bc98dbde7f4ef4d1c534443602e6d549ac2"
  license "MIT"

  depends_on "python@3.14"

  def install
    cd "." do
      virtualenv_install_with_resources
    end
  end

  test do
    system "#{bin}/agentops_mcp_server", "--help"
  end
end
