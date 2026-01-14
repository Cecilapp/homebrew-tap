class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.78.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.78.1/cecil.phar"
  sha256 "a3a3c4252d99f0f6a60d32a0b414ee43a25e80467cdb736fd65cd9aa03d6f3aa"

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
