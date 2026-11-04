class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.27.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.27.0/cecil.phar"
  sha256 "584921db877b445dfe7650d34f52146d9764ab7c4c5c6c3d10d8728ffb25de15"

  #depends_on "php"
  uses_from_macos "php", since: :monterey

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
