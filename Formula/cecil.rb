class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.0.0-beta.4/cecil.phar"
  version "8.0.0-beta.4"
  sha256 "892b1bd0c9763332c16cadbb8022444977170eb5966e3dde0826d4059cd4fc01"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
