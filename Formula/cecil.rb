class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.33.2/cecil.phar"
  version "7.33.2"
  sha256 "0a7f414345a509bac1a92d49dd5ac63b73d3c04b9df2c04415aa3f91e0c6c3fe"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
