class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.119.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.119.2/cecil.phar"
  sha256 "df63d5c80466078100df09f45c5315e9579d04b1822cd5cc3bde0f405fa1ff1c"

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
