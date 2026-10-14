class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.11.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.11.1/cecil.phar"
  sha256 "b6cf4ae7a40c77f2035f57cfad9fe6e829bc1c3f68e9f08424c625d0ba1d394c"

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
