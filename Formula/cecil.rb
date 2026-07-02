class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.113.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.113.0/cecil.phar"
  sha256 "cce804b004b7199b34e9f83354bf9b2ada20e73c1d7c79c50b04a3160c80c3b4"

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
