class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.1.5/cecil.phar"
  version "8.1.5"
  sha256 "e2cef9ab7d5f7d1f08cfec6e8af80a20869d5692734c35aa18f7a9f575cbe14c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
