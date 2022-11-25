class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.28.1/cecil.phar"
  version "7.28.1"
  sha256 "57959b77514f0cb4e316162b10cd6d2b50d135de670e9324c89e486a93b8a5db"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
