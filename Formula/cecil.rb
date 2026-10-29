class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.25.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.25.2/cecil.phar"
  sha256 "dbacb3957edcaed4bef9bb4efe3f9ed2ad402f045aac4969403e448cccb986bf"

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
