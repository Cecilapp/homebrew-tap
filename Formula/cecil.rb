class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.2.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.2.0/cecil.phar"
  sha256 "53b0cfe584ef2e37ad115a73cc2ec62e91ffe6f71ac628cf217d2987be316ffd"

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
