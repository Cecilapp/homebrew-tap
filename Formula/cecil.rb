class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.8"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.8/cecil.phar"
  sha256 "fa635c2fb60ee11a11fbf43b237d107338789b6151ccbda4cddbd75a4eef3dad"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
