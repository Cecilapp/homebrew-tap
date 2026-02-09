class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.82.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.82.0/cecil.phar"
  sha256 "fdcca53479e3daf40360992ea5410da6f5613ef8ca9f1fb2653f0d91f24fc3be"

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
