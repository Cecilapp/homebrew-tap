class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.52.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.52.2/cecil.phar"
  sha256 "e68e02da0df519745efc2e3c46b6853b46d1b8fa9cb9363a3017f365c803727f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
