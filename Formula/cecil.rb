class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.82.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.82.1/cecil.phar"
  sha256 "c235e56af160d04c1f1eaa9ded71ec3ea400c368b941ef7d957393411dd56732"

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
