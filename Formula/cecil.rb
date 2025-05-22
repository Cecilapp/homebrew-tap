class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.45.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.45.4/cecil.phar"
  sha256 "e2012fa52d954f42e2b7149ed8c7736e645233ce424b13c5da4b877fb58e90c9"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
