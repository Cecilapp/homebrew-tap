class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.18.2/cecil.phar"
  version "8.18.2"
  sha256 "bc962f08fa16791eda2c5840f1fdcd57129c0ab8f85a7e95d4f7dff386c53e73"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
