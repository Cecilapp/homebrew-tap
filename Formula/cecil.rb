class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.83.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.83.1/cecil.phar"
  sha256 "4d52260cf6173e631796ec673a63f300717e63f1c0b7f95e732ec86a53534c62"

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
