class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.16.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.16.0/cecil.phar"
  sha256 "2c69d9a366e77d27f232c7629c014d11905d3e26a3d4de6e3fe515b900d2bc55"

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
