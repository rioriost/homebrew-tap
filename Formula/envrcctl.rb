class Envrcctl < Formula
  include Language::Python::Virtualenv

  desc "Manage .envrc with managed blocks and OS-backed secrets"
  homepage "https://github.com/rioriost/envrcctl"
  url "https://github.com/rioriost/envrcctl/releases/download/0.2.5/envrcctl-0.2.5.tar.gz"
  sha256 "a7183773c0b8652f14cf15abdf1a128c3ebcafc0e2cc0e40d1e1cba5742bf600"
  license "MIT"

  depends_on "python@3.12"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/source/t/typer/typer-0.24.1.tar.gz"
    sha256 "8bf4e81499611d3161106e998fe4d624a83abf8bfda3b99898b4498d0c2f0976"
  end

  on_macos do
    on_arm do
      resource "envrcctl-macos-auth-arm64" do
        url "https://github.com/rioriost/envrcctl/releases/download/0.2.5/envrcctl-macos-auth-0.2.5-arm64.tar.gz"
        sha256 "665fd185227565fd169e1a6c19a6f1aa2f254a62a98d96fa9d875ef41f1bcf9c"
      end
    end
  end

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install resource("typer")
    venv.pip_install buildpath

    bin.install_symlink libexec/"bin/envrcctl"

    if OS.mac? && Hardware::CPU.arm?
      resource("envrcctl-macos-auth-arm64").stage do
        bin.install "envrcctl-macos-auth"
      end
    end

    bash_completion.install "completions/envrcctl.bash" => "envrcctl"
    zsh_completion.install "completions/envrcctl.zsh" => "_envrcctl"
    fish_completion.install "completions/envrcctl.fish"
  end

  test do
    assert_predicate bin/"envrcctl", :exist?
    assert_match version.to_s, shell_output("#{bin}/envrcctl --version")
    if OS.mac? && Hardware::CPU.arm?
      assert_predicate bin/"envrcctl-macos-auth", :exist?
    end
  end
end
