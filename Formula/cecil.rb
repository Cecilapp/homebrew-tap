class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.5/cecil.phar"
  sha256 "cbb624a9ae03416475c79ff4ff4a487dd5acc738df8bcc9cffe04ba8283d9eee"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
