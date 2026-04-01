class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.88.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.88.1/cecil.phar"
  sha256 "58238a6b49ce62cce9409dd41aba89779fe35991e76002ea8092215adb3039e7"

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
