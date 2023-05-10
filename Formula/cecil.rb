class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.36.6/cecil.phar"
  version "7.36.6"
  sha256 "630cfff8d18ff664a33f49cb2513d76508175bfa304e2ea73d37445eade6d69b"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
