class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.94.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.94.2/cecil.phar"
  sha256 "072fb28ac3ba83b9556efbb07c7fe178bdda9712a4958f2676dab2e1f66a0767"

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
