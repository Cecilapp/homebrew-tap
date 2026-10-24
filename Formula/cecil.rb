class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.24.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.24.0/cecil.phar"
  sha256 "5bfd14ce587f1ae599470206524cbf677f79d5c46898aba1b64f351fa709d2ab"

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
