class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.70.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.70.3/cecil.phar"
  sha256 "39c5cf40489ac59973153c3610ced54b160536f3e34e006820e3fe91b6ba893a"

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
