class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.106.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.106.3/cecil.phar"
  sha256 "b566d2cfb2b17ed8c7f76a610ca42f35af732ef251e1f1964dcf3614012c6de6"

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
