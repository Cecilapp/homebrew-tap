class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.43.1/cecil.phar"
  version "7.43.1"
  sha256 "e7f432f411f307d8504d7196f574823a5d5f3b510ae32b1baf696605946559ef"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
