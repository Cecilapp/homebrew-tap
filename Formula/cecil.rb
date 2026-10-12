class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.10.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.10.0/cecil.phar"
  sha256 "0fcaceaadf0ac3c3e0388ce04ebf0cc3ca6e05dd3e52636c3463dece584ed476"

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
