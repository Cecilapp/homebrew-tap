class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.5/cecil.phar"
  sha256 "aa7adac7ce2a2e178beeb82e2e820e44adb3eeff042a9ea9c97d2d382be9ec4b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
