class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.0.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.0.1/cecil.phar"
  sha256 "123639cb9e92b077983d1b668a03a1f7d53ae65a0d5e7e2fdc8ef9f81c5e6752"

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
