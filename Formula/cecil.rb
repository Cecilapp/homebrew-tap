class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.28.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.28.0/cecil.phar"
  sha256 "e4867865bf0847e4bd35687c03c218ef2c503c3dfb068ddd3f13edf1a7f2618e"

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
