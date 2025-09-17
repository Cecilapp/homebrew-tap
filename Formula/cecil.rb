class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.0/cecil.phar"
  sha256 "dbd2107e1ebd8639960d4363651aa7e12a44997402869899af2a38561446c8a7"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
