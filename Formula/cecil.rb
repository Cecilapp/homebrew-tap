class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.44.1/cecil.phar"
  version "7.44.1"
  sha256 "5330161e1a5ce1becc1ded5ee35a16177e48611eb675a6e34d23214477368e6b"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
