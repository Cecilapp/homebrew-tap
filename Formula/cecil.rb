class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.29.4/cecil.phar"
  version "7.29.4"
  sha256 "b0e06f62ec77db601185e35a837f9ef1541566203ab6f6d7a4d78f54cd1b6d53"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
