class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.30.5/cecil.phar"
  version "7.30.5"
  sha256 "e7aebb11c50884838ed85ccf55827aa1ea8d8bf259ac5dfc5727675fe99f1674"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
