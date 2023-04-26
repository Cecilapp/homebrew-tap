class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.36.4/cecil.phar"
  version "7.36.4"
  sha256 "3e7505d955f0fc7542aea912186480f6b49ef26991a4ed67ca87b2a4edf220b4"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
