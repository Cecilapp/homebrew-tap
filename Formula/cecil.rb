class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.75.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.75.3/cecil.phar"
  sha256 "7939ba1dc8dbbb3f27253f262fae86d12f234662fcb33f0440fb33fef07c1e8f"

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
