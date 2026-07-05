class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.114.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.114.2/cecil.phar"
  sha256 "be869f6561d871ce8e13c529f0a9e3e8a5ccb2f251fe110a1c9601292c57a7aa"

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
