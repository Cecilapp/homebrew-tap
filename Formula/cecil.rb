class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.2.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.2.1/cecil.phar"
  sha256 "866758b250de95c76c854d57806630e762254d6abe13cddd642fffd2e31bfe8d"

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
