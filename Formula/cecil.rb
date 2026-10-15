class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.12.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.12.0/cecil.phar"
  sha256 "8ac041fbe18c9141f4aec24d38be937106eb8e32c9b4695c13d0519e71850f46"

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
