class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.47.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.47.3/cecil.phar"
  sha256 "063628b66c652a9bda586c70271ed833b4f97e0413ea2531d15c336544748204"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
