class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.105.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.105.0/cecil.phar"
  sha256 "6ae728b082f122ce11afe7a824bee9a29133d42a34049b6108d51432edf49c1b"

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
