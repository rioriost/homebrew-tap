class Envrcctl < Formula
  include Language::Python::Virtualenv

  desc "Manage .envrc with managed blocks and OS-backed secrets"
  homepage "https://github.com/rioriost/envrcctl"
  url "https://files.pythonhosted.org/packages/f3/d6/8b8109fa5479df987b66db36d8904afd95e8652c57e98db56d4eeeffdcce/envrcctl-0.2.2.tar.gz"
  sha256 "0f35644f150ef9dd75117d0bfdb9fa6a42f4fffca99166b325c83076f66b4783"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "python@3.12"

  resource "envrcctl-macos-auth" do
    url "https://github.com/rioriost/envrcctl/releases/download/0.2.2/envrcctl-macos-auth-0.2.2-arm64.tar.gz"
    sha256 "c8abd30083608d8fbc2c6f0b3a475f9fbc35f88c6c095cee1f9fb0b6908b797e"  end

  def install
    virtualenv_install_with_resources

    resource("envrcctl-macos-auth").stage do
      bin.install "envrcctl-macos-auth"
    end

    bash_completion.install "completions/envrcctl.bash" => "envrcctl"
    zsh_completion.install "completions/envrcctl.zsh" => "_envrcctl"
    fish_completion.install "completions/envrcctl.fish"
  end

  test do
    assert_predicate bin/"envrcctl", :exist?
    assert_predicate bin/"envrcctl-macos-auth", :exist?
    assert_match version.to_s, shell_output("#{bin}/envrcctl --version")
  end
end
