class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.94.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.94.3/cecil.phar"
  sha256 "752c15fe9b9ff5d3941afab40417d397706761a487006c205b8d40903dbfe5ba"

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
