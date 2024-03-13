class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.8.1/cecil.phar"
  version "8.8.1"
  sha256 "d5126fb3b9a460bfc30b9c9779ea7cbdcc262a05bf03ab1ae6e53426e4060443"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
