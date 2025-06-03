class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.46.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.46.0/cecil.phar"
  sha256 "b2cec9ddc08ad05e722c9dc402ad810dd9206cc3410453ad06de8a0ce4094645"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
