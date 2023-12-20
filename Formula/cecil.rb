class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.1.0/cecil.phar"
  version "8.1.0"
  sha256 "651ee316a4c7137290437f30b3dbb0ffd565ad4c73ca67fbbea8ccdd2a85c4f9"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
