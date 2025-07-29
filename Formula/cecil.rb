class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.52.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.52.4/cecil.phar"
  sha256 "4ff1a520b3c27203460c5181b5f015e59c44bd979cb9d7e112212b1569c25a36"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
