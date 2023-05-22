class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.38.0/cecil.phar"
  version "7.38.0"
  sha256 "c4f4df024f974b27c8e1e99b2022f410618041c3138592895969dcf82380f105"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
