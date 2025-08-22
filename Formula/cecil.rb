class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.61.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.61.3/cecil.phar"
  sha256 "6817521bff4ac983b3aff649d7fe67c3107ab7e87962011db20d24525b5adc0a"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
