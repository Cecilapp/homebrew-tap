class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.61.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.61.1/cecil.phar"
  sha256 "afcdb6e543b9f1ce37ad145fb91438a12359ea115a05deefeb04a1e36bcd52a8"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
