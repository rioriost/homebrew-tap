class Envrcctl < Formula
  include Language::Python::Virtualenv

  desc "Manage .envrc with managed blocks and OS-backed secrets"
  homepage "https://github.com/rioriost/envrcctl"
  url "https://github.com/rioriost/envrcctl/releases/download/0.2.6/envrcctl-0.2.6.tar.gz"
  sha256 "c42c3dd028c5423b204e93eee0797b9e1181b44453bab27a86e2cc15a38ad1bb"
  license "MIT"

  depends_on "python@3.12"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/f5/24/cb09efec5cc954f7f9b930bf8279447d24618bb6758d4f6adf2574c41780/typer-0.24.1.tar.gz"
    sha256 "e39b4732d65fbdcde189ae76cf7cd48aeae72919dea1fdfc16593be016256b45"
  end

  on_macos do
    on_arm do
      resource "envrcctl-macos-auth-arm64" do
        url "https://github.com/rioriost/envrcctl/releases/download/0.2.6/envrcctl-macos-auth-0.2.6-arm64.tar.gz"
        sha256 "2f3d94780818ab2aeb86c308ca475ca2bb4f2d9762e191d4d15439f7d30cd275"
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
