class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.36.3/cecil.phar"
  version "7.36.3"
  sha256 "b7f2b82851392d9a6e0d086f0a1deda569ddc184fa3af6a98c89fe0e05579136"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
