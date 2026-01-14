class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.78.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.78.0/cecil.phar"
  sha256 "d07b088fd7b57dd5c278ef66cd431f75e67c269e25125cf7dbff0bcc4aa8e25f"

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
