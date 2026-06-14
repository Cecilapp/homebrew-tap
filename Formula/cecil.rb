class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.106.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.106.6/cecil.phar"
  sha256 "ef39cfb337a5983e6cb507a1104843fb8ff38050ea6464b8b2fedec707216409"

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
