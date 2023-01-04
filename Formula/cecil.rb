class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.29.0/cecil.phar"
  version "7.29.0"
  sha256 "6d105cff740b6e9f37630a0108f2f4aa3c1912d82b03179df069786db21966bf"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
