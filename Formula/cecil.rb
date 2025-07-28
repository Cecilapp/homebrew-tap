class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.52.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.52.0/cecil.phar"
  sha256 "b018e99d6cf4a1ad2d0fb1a9549430bd60479f9b0b4ba8dbdbed2f84b0fb79a8"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
