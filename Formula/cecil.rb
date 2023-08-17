class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.46.4/cecil.phar"
  version "7.46.4"
  sha256 "2d6f25451584ac676e0f22f0bd80b0af4cb03a0374507b00a2f77bd36a8eb8c2"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
