class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"

  url "https://github.com/Cecilapp/Cecil/releases/download/7.52.0/cecil.phar"
  version "7.52.0"
  sha256 "e293dfc8edb9e92c9f54c9e3be54d985dd79060751da35eaf5d60a79d66c03f4"

  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
