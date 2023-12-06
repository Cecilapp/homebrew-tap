class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.0.0-beta.6/cecil.phar"
  version "8.0.0-beta.6"
  sha256 "11ba70014142b0dd2c1637eeed0ce6fd37e84ce992c38a895493d9bce565518e"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
