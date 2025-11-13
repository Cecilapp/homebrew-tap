class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.71.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.71.0/cecil.phar"
  sha256 "1da25146545b8f22bb54179a386f40a533d2045563bb44653fa8e0fc793f25dc"

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
