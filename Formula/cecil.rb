class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.49.1/cecil.phar"
  version "7.49.1"
  sha256 "20ef16212c7cb087fc52697b8764164ef3738862e7275d608573bd3128efd4ae"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
