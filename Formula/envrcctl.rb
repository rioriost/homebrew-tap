class Envrcctl < Formula
  include Language::Python::Virtualenv

  desc "Manage .envrc with managed blocks and OS-backed secrets"
  homepage "https://github.com/rioriost/envrcctl"
  url "https://github.com/rioriost/envrcctl/releases/download/v0.2.1/envrcctl-0.2.1.tar.gz"
  sha256 "4e635e385b1753d6e35e9b0de3a00b212f9fca310c69abff347cdf0b23063f80"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "python@3.12"

  resource "envrcctl-macos-auth" do
    url "https://github.com/rioriost/envrcctl/releases/download/v0.2.1/envrcctl-macos-auth-0.2.1-arm64.tar.gz"
    sha256 "26ad83eafcfa07cc39bd57ca401ba0c3b0da509a8a8e1c01b0669afeec9c378f"
  end

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
