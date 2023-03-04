class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.30.4/cecil.phar"
  version "7.30.4"
  sha256 "e1fac566e9421224d96868522faea603b3e9c3e46214e02f6da1c9d24de7672c"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
