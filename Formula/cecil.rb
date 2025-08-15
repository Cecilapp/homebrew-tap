class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.6/cecil.phar"
  sha256 "5c34115839dc2e14f9b9a24808b91587542815bbb315fcbabd7e7dcf18c91a5b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
