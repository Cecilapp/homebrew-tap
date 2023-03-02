class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.30.2/cecil.phar"
  version "7.30.2"
  sha256 "e1e92801573847218f4771e2d7e8f6887e19a3893a27b5d2741f89f29f05f542"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
