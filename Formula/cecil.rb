class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.11.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.11.0/cecil.phar"
  sha256 "48fca8d0e9d9e07fe499be2e782f35f1517584b1b577df845f51df1ca38f668c"

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
