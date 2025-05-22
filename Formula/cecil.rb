class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.45.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.45.6/cecil.phar"
  sha256 "ac7048db8af70c9781e60c40178e48969236380947243e253c6052f7e22eb463"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
