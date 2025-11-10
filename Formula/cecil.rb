class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.70.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.70.5/cecil.phar"
  sha256 "5ff348c8c294b27d8673cf0ada7795a2d5c4a5746a509f070ea308a45d0831a3"

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
