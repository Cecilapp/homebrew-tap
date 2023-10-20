class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.50.0-beta.1/cecil.phar"
  version "7.50.0-beta.1"
  sha256 "a38aa05fc9ce5b2c820e56bc7731e5313f92f4e3d9cb70ea62476d7ca9888220"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
