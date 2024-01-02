class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.1.6/cecil.phar"
  version "8.1.6"
  sha256 "d1d1b7ca4adc045e9951dd939f611a7bdf53643a854ad9b7b11a43f26f62ef25"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
