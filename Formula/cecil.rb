class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.31.1/cecil.phar"
  version "7.31.1"
  sha256 "c02e6af7570f43f92d21ca16c7f598ebc562fe0ea37d4ea0fdcc4ef3872c9dbc"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
