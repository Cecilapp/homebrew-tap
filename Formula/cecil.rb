class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.50.1/cecil.phar"
  version "7.50.1"
  sha256 "ecb81db5c85614fee75808e096bc9c676f8aa5533b6c3f8ba74db6d54bb0f0f8"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
