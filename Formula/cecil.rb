class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.29.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.29.3/cecil.phar"
  sha256 "149ba797b34ef13db103d6ca9aa123208794a9b255861b9055f9faac66a05284"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
