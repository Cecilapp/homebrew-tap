class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.29.3/cecil.phar"
  version "7.29.3"
  sha256 "5bdc123dc65a2fcc094be51f67f9981de543ce6525d4bca8c86095ce26563965"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
