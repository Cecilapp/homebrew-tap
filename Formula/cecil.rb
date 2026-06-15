class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.107.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.107.2/cecil.phar"
  sha256 "519e914b6f12979ba452f91603e93e2152d22a60962571eb91816a299112bb43"

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
