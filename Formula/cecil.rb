class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.8.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.8.0/cecil.phar"
  sha256 "d8d43a0f7e06da90ecb050f3845ee31a0da8de04a9e3907dbd09086d8ad94bbe"

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
