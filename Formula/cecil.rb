class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"

  url "https://github.com/Cecilapp/Cecil/releases/download/7.52.1/cecil.phar"
  version "7.52.1"
  sha256 "37a24528656f11e10ca900e58f378967402491abb4f2cd808d318191415fd2f0"

  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
