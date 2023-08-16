class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.45.0/cecil.phar"
  version "7.45.0"
  sha256 "5def4c83f458b6285fee4e048e289745ec87c64e7d9c742ad0de5900aceed87e"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
