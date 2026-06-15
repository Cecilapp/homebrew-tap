class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.107.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.107.3/cecil.phar"
  sha256 "f4afd1d71a2d62139cba21134092074e8a63799091a51363ddd558089ded0b09"

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
