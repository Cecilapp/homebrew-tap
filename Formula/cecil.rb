class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.13.0/cecil.phar"
  version "8.13.0"
  sha256 "ccfe428bfe9ab0ac3e41b17a46387807d5e23fef2c49e7e99bdaeb128f8448a9"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
