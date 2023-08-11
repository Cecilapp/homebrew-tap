class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.44.2/cecil.phar"
  version "7.44.2"
  sha256 "03271b3a72a136bc285eabf71beb9f3e93b03520634d4c6f9c9a409149817934"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
