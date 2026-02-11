class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.83.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.83.0/cecil.phar"
  sha256 "e0ff2e790f45a38c1d5e894ef460a43ddb588fdcd40ba8fd2783c1c98d793a6e"

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
