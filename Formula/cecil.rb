class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.50.0-beta.2/cecil.phar"
  version "7.50.0-beta.2"
  sha256 "c7f4a8e273311ad501f32c5516885f553858e97cd5a88a733bf963e63e37d0c9"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
