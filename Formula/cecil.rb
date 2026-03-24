class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.87.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.87.2/cecil.phar"
  sha256 "6cedbfd5d534b09fde42669e1a98457f348b4a1312eba40a384e809909c755c8"

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
