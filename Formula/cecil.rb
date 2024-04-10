class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.9.4/cecil.phar"
  version "8.9.4"
  sha256 "219ba62d23b3bc71819d7fd1ae79cdd3d16c77128befc84f0b707688f6bf9cf1"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
