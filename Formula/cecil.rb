class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.63.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.63.0/cecil.phar"
  sha256 "1394d752ca93c7032fe957178d27052a0d1d9cb697fabf0ff36afd8f98cbc5f4"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
