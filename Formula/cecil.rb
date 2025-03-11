class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.33.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.33.1/cecil.phar"
  sha256 "609312e240d19ba68d254c7927d0502ba2a9a9066be57194e99a964d79d2e9f3"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
