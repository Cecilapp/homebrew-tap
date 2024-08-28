class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.17.1/cecil.phar"
  version "8.17.1"
  sha256 "8640581189b90642fa5b73b2a17ddd2a26a8b137613e6208182fc113a53db438"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
