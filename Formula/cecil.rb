class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.80.7"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.80.7/cecil.phar"
  sha256 "679255015c334232b9fb91cc81af8fd73733671be4562d658ca0b32bdf9d1a3a"

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
