class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.32.2/cecil.phar"
  version "7.32.2"
  sha256 "73631fd9520e58a91f199be1bc5474554b8c727e53fb180db922761d7a5d358d"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
