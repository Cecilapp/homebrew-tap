class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.40.2/cecil.phar"
  version "7.40.2"
  sha256 "385970d5a341f3812a78992a8f95e4a6130debd602af1bda7e9e44af4a9505ac"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
