class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.41.0/cecil.phar"
  version "7.41.0"
  sha256 "d0b3816cdaf0dc09aa1c588c84dc4b05bfa7eaf01e2fc81102e31c0ba575a880"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
