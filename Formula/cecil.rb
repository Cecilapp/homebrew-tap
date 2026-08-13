class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.118.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.118.0/cecil.phar"
  sha256 "c76b17bddddda302661f4451f9d27a9506358a1824176ae5db6ebe196e0fbf79"

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
