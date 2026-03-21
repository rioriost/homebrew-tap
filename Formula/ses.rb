class Ses < Formula
  desc "Speech Event Stream CLI"
  homepage "https://github.com/rioriost/ses"
  url "https://github.com/rioriost/ses/releases/download/0.0.5/ses-0.0.5-macos.tar.gz"
  sha256 "3a0e7b270f9b6ee0c3927e2b5ca3aba2a1ddcb60e55ca1c5dbbc8bfc0008638a"
  version "0.0.5"

  def install
    bin.install "ses"
  end
end
