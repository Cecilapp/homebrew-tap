class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"

  url "https://github.com/Cecilapp/Cecil/releases/download/7.54.1/cecil.phar"
  version "7.54.1"
  sha256 "07fa6ce4b107745c295512b67fd96a8de17d082181da13b77481978654dce95d"

  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
