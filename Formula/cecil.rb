class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.37.0/cecil.phar"
  version "7.37.0"
  sha256 "6aee496852b6410eb5cebc9e2a31e0584a1e09607b717ce1d9f5786e90899a37"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
