class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.46.8/cecil.phar"
  version "7.46.8"
  sha256 "46cedb332444ba51a21c3212264eccedfcf4231af72939d957b41463b2ecd9db"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
