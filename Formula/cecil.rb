class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.115.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.115.0/cecil.phar"
  sha256 "abdae3d6fc183dbc7461a66cf4507e358d4c9dd68ad876bb16e45a8ca7bc1376"

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
