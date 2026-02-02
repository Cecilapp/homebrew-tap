class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.80.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.80.1/cecil.phar"
  sha256 "bc11707af5e2a4aad904120e3493cc42ee0b60405c6090831e1bfd14058e560e"

  #depends_on "php"
  uses_from_macos "php", since: :monterey

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
