class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.91.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.91.0/cecil.phar"
  sha256 "520c804436b2a16121eb35530254cb7c7fb9952aca1b7343ab0e26ab2c8ce43f"

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
