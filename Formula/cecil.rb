class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.12.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.12.1/cecil.phar"
  sha256 "c4ec397d23c54f9152b5697707b895322ab08964f3f8f13cdfdaa319b9b7d1a7"

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
