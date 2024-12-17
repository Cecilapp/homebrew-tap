class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.21.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.21.0/cecil.phar"
  sha256 "58d3a47c4b1a2573f40149291888eff769a911bf178060bec6454359666488c9"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
