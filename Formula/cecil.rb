class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.44.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.44.0/cecil.phar"
  sha256 "5388e8e077476611e07664edd4056a400a33004e129ce7848e243d90fe471cbd"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
