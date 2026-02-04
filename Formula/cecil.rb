class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.80.5"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.80.5/cecil.phar"
  sha256 "f9d03dbd8914954f02871f46fc8574920fdb0596cd68f209578a45c9e1bf098d"

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
