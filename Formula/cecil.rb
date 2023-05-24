class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.39.2/cecil.phar"
  version "7.39.2"
  sha256 "d4b54bed6c867a5bf9ee9aff4760554dec8419c921907530a15bd638228c7258"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
