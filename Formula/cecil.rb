class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.45.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.45.5/cecil.phar"
  sha256 "78af58ab1f0516a94b7b4dccac6be5df9147fb6b57398192677458171945a8b2"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
