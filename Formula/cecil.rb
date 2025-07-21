class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.51.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.51.2/cecil.phar"
  sha256 "21c9ea92d89fda452d234c50c81945ace04807b31fdf22372a5710672d8f1594"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
