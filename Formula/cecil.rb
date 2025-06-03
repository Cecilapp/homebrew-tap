class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.45.9"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.45.9/cecil.phar"
  sha256 "92c5feb4b1a08642bb031e16f513767f50fda7f60e1621fa7289cbc4a2ffeee4"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
