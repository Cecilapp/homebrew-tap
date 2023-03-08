class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.32.0/cecil.phar"
  version "7.32.0"
  sha256 "8f7fa80ad05b57cef29c25d8f41ac4529049d8fa02ca25478aba77ec9d7e6f61"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
