class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.117.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.117.0/cecil.phar"
  sha256 "99ca7fabd1283b0809bc828b7e1cdc14a384b6b8a1fdc064d4cebb3c9674a00f"

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
