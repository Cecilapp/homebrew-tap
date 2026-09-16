class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.1.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.1.2/cecil.phar"
  sha256 "8c660974fa4f97eb6634e92266a4ad3dff668f6cdb7ce86598f44949b159417a"

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
