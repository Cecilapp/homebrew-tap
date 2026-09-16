class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.1.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.1.1/cecil.phar"
  sha256 "c9995327cf18be6013b7d147d6c49b09bfabf47310c42714d554ada4c2370e5e"

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
