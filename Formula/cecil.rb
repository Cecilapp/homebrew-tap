class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.33.4/cecil.phar"
  version "7.33.4"
  sha256 "7917611a35f3bbc5f4bc197c623a946a0cb14105af55e7b20a15c87ef4205a45"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
