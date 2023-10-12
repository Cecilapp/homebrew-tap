class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.49.0/cecil.phar"
  version "7.49.0"
  sha256 "a0fc7349f1606d9a1d320d9548a5a18b1239fc7db9638158b41ff256f33fede0"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
