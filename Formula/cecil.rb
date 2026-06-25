class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.112.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.112.1/cecil.phar"
  sha256 "08419da5dac47b9c88f944a80bc9cc80dbaab68823e2c908a05f4beee4e2ff97"

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
