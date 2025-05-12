class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.42.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.42.1/cecil.phar"
  sha256 "7439908b0512f80816aa56fd74d1bc1745170b5543703f3799a50647011dd9c7"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
