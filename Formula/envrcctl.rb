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
    sha256 "e511281394507b4e7952e8729ee2414686845162859f3cf7b18bda5c1bfa8c80"  end

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install cached_download(
      "https://github.com/rioriost/envrcctl/releases/download/0.2.2/envrcctl-0.2.2-py3-none-any.whl",
      "envrcctl-0.2.2-py3-none-any.whl",
      "10201e801ef8f4ed41517e43c019b07c662ab9cea6a78c4d357cc7e9a808fa2e",
    )

    bin.install_symlink libexec/"bin/envrcctl"

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
