class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.81.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.81.0/cecil.phar"
  sha256 "02e2fda5e8d7bbac11c0defdb6cd28dec82872c55a08b05dc9d1e638c4794c6a"

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
