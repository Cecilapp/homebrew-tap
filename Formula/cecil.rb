class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.12.4/cecil.phar"
  version "8.12.4"
  sha256 "04bfcbcaaa1056710ecedd089bea8f2582b3bf78094be49ebac8d2ef7df7f196"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
