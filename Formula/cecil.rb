class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.96.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.96.1/cecil.phar"
  sha256 "048f98a6bd83053c1aaaa3015d62ca4b2e78480f1a9939097eac6777494589c7"

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
