class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.23.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.23.0/cecil.phar"
  sha256 "44c8d8d4e91841fcb9d3cdf01ddb7f643f1303ff8ff3f0b9301365e7be98ab36"

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
