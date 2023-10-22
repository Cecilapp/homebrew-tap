class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.50.2/cecil.phar"
  version "7.50.2"
  sha256 "114f50de81250c032ab7bc7c134b5a36ea68b234f22b3670d18336d2450387f5"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
