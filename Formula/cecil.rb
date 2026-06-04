class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.102.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.102.1/cecil.phar"
  sha256 "805eb8d3da4bb8e385b4445b6cdc64eb649248a1949632305c2a8a3b610417ee"

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
