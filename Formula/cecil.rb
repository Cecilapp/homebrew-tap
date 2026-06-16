class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.108.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.108.2/cecil.phar"
  sha256 "08fc5da2100df5c1f5699f69cd4c6da79fea1541dc54dadc3292aa98e797174e"

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
