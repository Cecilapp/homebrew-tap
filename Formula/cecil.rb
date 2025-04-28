class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.0/cecil.phar"
  sha256 "0f99b1e8d175b4e331a176d785a49bf898785d5901dc5afc9ba35a3f786720c9"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
