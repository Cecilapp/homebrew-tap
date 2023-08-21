class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.46.5/cecil.phar"
  version "7.46.5"
  sha256 "6c9756a6743886d2115ab8c86f592aae01d78356aacb857f41e33c4c08b0b3c9"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
