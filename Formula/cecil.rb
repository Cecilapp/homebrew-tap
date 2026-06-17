class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.109.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.109.0/cecil.phar"
  sha256 "ffdd9701ac7784d4d1e81f936625446e79fe78d2de66301b493cbdaffa51ba10"

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
