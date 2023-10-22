class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.51.1/cecil.phar"
  version "7.51.1"
  sha256 "d6f883c8e281e3c14c050a6645698c740d54e5ed26937a9d8d625e7d49a64b2a"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
