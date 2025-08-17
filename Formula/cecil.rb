class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.16"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.16/cecil.phar"
  sha256 "cb2f6e405da9d4b2bb829ac8e25c9eb093bddc6a63ce7ea59a7b382d6242ce6b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
