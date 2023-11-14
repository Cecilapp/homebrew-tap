class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"

  url "https://github.com/Cecilapp/Cecil/releases/download/7.54.0/cecil.phar"
  version "7.54.0"
  sha256 "b1af8bd290c5e907071d7af76c812099f1853780860322909199619b220c464e"

  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
