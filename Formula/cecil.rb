class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.29.2/cecil.phar"
  version "7.29.2"
  sha256 "dbdfa3422eb141f6381703665857b81d2fa812d53db358ba2904b5abf4187efd"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
