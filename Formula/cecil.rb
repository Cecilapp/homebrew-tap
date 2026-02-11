class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.83.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.83.2/cecil.phar"
  sha256 "1dcce363476aface38e0933413026a33e1ceac07603668f47a0f358dfd1aa08b"

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
