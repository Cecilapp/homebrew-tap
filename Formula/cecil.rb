class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.5.2/cecil.phar"
  version "8.5.2"
  sha256 "abdaafb9738d1960c983c1a7fa70ab7236f6a33bedf1704471ff839ef616d2d1"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
