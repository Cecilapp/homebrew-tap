class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.114.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.114.0/cecil.phar"
  sha256 "f9ed01c9e13742c071c7d5cd827f5f405cf1d5e0d7d45debcdaf3d32094b4082"

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
