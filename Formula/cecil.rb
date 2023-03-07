class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.31.0/cecil.phar"
  version "7.31.0"
  sha256 "442520c0ac8c84be8834e3fb47a754ca60d5a0521bc72a443a6d700b71ff7f2e"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
