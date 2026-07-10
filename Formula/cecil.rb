class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.116.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.116.0/cecil.phar"
  sha256 "d562aefbf845c9df9a496edaf3e22dcd18e1e565c11a961c3007aece82db311f"

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
