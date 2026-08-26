class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.0.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.0.0/cecil.phar"
  sha256 "0b5eec47e1081e36d6316228feb823fffdb7fa987c6980e8fd3c5eb89a9b1ea3"

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
