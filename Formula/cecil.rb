class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.62.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.62.0/cecil.phar"
  sha256 "2e6432bbe71d673674a447e4f3e5220fb712ed8dc7e7778dedfb679f04eab7ea"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
