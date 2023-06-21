class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.42.0/cecil.phar"
  version "7.42.0"
  sha256 "0214af4397d8e611dd3046a3d0d55c61fd0d125c856f7a5c036bcd71b45c4b08"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
