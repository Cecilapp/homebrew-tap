class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.34.1/cecil.phar"
  version "7.34.1"
  sha256 "b1f9d7ccc48fb01318d039074f48d00ca927d6397320a1b364b960e2450df2d3"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
