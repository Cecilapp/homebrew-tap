class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.119.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.119.1/cecil.phar"
  sha256 "62293accddf3779526bdc82baaf884a13af34c4bbd916fd7f828ce0b5fa073f1"

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
