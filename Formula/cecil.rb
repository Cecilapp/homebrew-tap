class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.22.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.22.2/cecil.phar"
  sha256 "af3254e40d90fa53a4e36e8af44d4cff5d47b25d0f085718fafc6b4c1eba0d7f"

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
