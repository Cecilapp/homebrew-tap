class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.30.1/cecil.phar"
  version "7.30.1"
  sha256 "ae7bcefa32f5824dc2ecdd1470ca8d9d2f764318885f55d83bd97b25c5c7163f"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
