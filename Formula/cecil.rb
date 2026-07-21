class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.116.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.116.2/cecil.phar"
  sha256 "25e16a69166d98454d54d441844ade9d95c1ce87c0e2c51a0fc1b7c1d06791bd"

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
