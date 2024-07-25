class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.15.0/cecil.phar"
  version "8.15.0"
  sha256 "5cebc92b2a7ee8b4d4f6b6c0beb8357f581eb9ca15cf593aa2e4bcd7f379dfce"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
