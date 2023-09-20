class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.48.2/cecil.phar"
  version "7.48.2"
  sha256 "8261e6659dc13505f0058d1b11f36e847d12decfc450b5a6d0095725942f142a"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
