class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.106.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.106.5/cecil.phar"
  sha256 "539bc1b7fe7685f6f312587cfc03ee9c4177a6b67ca87e0c1a5d68b70804baf8"

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
