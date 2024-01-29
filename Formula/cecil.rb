class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.6.1/cecil.phar"
  version "8.6.1"
  sha256 "ad2f66f7ac72fa5fb47f9b0e5ee1f6d128342baf15342d7dfffe85e84177da8a"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
