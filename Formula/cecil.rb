class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.107.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.107.1/cecil.phar"
  sha256 "f2fefadf1f11c3270d28b44eccea7ee93e046aaae7b30039f1a8d76ce9c43695"

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
