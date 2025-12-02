class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.74.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.74.0/cecil.phar"
  sha256 "f6aeb0ca38f83454814a49a7c9b8141516c098f04f43d36017cabe74a2e44f38"

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
