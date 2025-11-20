class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.72.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.72.1/cecil.phar"
  sha256 "f066d1de48325a9b929640bbdde2fe7976e356b053b7d04973d4ff178258df54"

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
