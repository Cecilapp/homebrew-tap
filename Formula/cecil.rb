class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.37.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.37.1/cecil.phar"
  sha256 "183054268fc0c6b0d8f4e751f722f1ef3ee14128bdf3b2a897a7105e3103b8d4"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
