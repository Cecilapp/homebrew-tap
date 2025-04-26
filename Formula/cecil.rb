class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.37.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.37.2/cecil.phar"
  sha256 "5a82e07881aba390d7c7cea5421143d04262fb69ac92fcd27774d8126dd634ef"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
