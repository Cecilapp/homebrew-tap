class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.79.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.79.4/cecil.phar"
  sha256 "79c1181d7204f682de5d3660d6411fa1ab790ad82c51283ee59d02da40f01a0e"

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
