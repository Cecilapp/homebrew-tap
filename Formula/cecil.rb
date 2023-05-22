class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.37.1/cecil.phar"
  version "7.37.1"
  sha256 "4dd00d7a3bb8f4ec33556debe1a92443e09000621b08b427ddf38ec421fe872e"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
