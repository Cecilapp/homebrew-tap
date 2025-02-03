class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.27.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.27.0/cecil.phar"
  sha256 "3d3716ddee67d95be492591c2b88267b9df1df6fa03e873597fa56b842419508"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
