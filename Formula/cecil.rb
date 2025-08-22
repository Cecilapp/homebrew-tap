class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.61.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.61.4/cecil.phar"
  sha256 "1aee59beabc22117258f690907f38c7cd4527753986b4c9df22888900c9696e6"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
