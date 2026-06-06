class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.103.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.103.0/cecil.phar"
  sha256 "f228532c5a12874e5ba81ba5414b2260f8e457deabf2067b847efe013b11f188"

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
