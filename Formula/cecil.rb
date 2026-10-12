class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.10.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.10.1/cecil.phar"
  sha256 "15c6238af37f0f32bc0ed6357b9b710f77ffabdfdab884c0e596ed568cc2cd09"

  #depends_on "php"
  uses_from_macos "php", since: :monterey

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
