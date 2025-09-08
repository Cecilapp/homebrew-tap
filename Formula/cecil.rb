class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.65.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.65.1/cecil.phar"
  sha256 "ef20dc97b9e98776d9e771cce4696fb1d1251bd4be166525654acfe167a140e4"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
