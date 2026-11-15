class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.30.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.30.1/cecil.phar"
  sha256 "48f2f1a6011e779de75d37588c019debe3d67bebb06e3b3ff59da7560e08a397"

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
