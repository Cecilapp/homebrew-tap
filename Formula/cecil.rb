class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.36.7/cecil.phar"
  version "7.36.7"
  sha256 "feb7e2d1dd1b683c55cf353e4941b670469f45890f84ef63641b2126674918b1"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
