class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.76.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.76.1/cecil.phar"
  sha256 "b1f08dc187b00594317765c61618c3449432f05f47e839cb1104ed15cb3a2666"

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
