class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.31.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.31.0/cecil.phar"
  sha256 "7a00a6e80e3500ac6dc12e5cfd3e8dd46ccfd93ec5e8ad47d645695dc0cb4ca0"

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
