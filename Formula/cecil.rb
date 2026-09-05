class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.0.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.0.3/cecil.phar"
  sha256 "c12689fa2626d4411557a0c12f8d121fa1f88391efead5100f1a2e545b00728e"

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
