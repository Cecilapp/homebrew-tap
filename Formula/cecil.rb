class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.4.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.4.0/cecil.phar"
  sha256 "c905bc58facdb320ea610633e1f991dc7c1e0542a0dd6e1ddd5bb1e4d3f12e97"

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
