class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.88.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.88.0/cecil.phar"
  sha256 "86761fb6f6ac54ee382f30ff8fc574d0916eae21747d9e4b9035206fdace242d"

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
