class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.63.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.63.1/cecil.phar"
  sha256 "dc61b075b5702f79925e5a8b96e0f39c55735ccabff34ab72d6e3e641470c747"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
