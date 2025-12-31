class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.76.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.76.0/cecil.phar"
  sha256 "e5f5efd69c71147f54e62b40fb8477a406195441304fa0d17b92d1fd42c1d38f"

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
