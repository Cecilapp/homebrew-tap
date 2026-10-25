class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.24.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.24.2/cecil.phar"
  sha256 "7b64ca6b2e30d1f518e2e51a907a82595d26e526988239a7a38250b1037946fd"

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
