class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.69.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.69.3/cecil.phar"
  sha256 "3319f7fe717fbf66160f1d8fed0746126d5dfa94d4ce98ff232000df1119a61d"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
