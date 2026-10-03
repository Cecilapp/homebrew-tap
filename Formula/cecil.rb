class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.6.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.6.0/cecil.phar"
  sha256 "1a057b28ebc4d7d62d6a994d76d94f356c8afb1ac01c5fa8a25684ac182cfe63"

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
