class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.14.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.14.0/cecil.phar"
  sha256 "2afb4448163621804d4ecf83585be8e83f3d9451b2885d81526f01383f3b1a44"

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
