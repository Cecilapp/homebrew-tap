class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.119.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.119.0/cecil.phar"
  sha256 "262327d2a12b37e218da53c4b5ee4e713e5c2bd058ea33b329281ec6f6be55c4"

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
