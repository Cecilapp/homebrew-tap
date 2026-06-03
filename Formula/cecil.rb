class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.101.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.101.0/cecil.phar"
  sha256 "6e3d07a6ef7f5d64994ba8bfa7af7cfd363c25108593bca7fba9695c9fc9ad05"

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
