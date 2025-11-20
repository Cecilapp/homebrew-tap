class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.72.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.72.0/cecil.phar"
  sha256 "4ccc2d8397c1b42d89501f399864866e3ceca68a67f72b4691b5055ccb24ef70"

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
