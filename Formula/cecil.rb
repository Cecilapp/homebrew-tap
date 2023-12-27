class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.1.3/cecil.phar"
  version "8.1.3"
  sha256 "e989b9d3d6bfc9509bcace1a24cdd2b16ed15f6d9ac6689f28130aba602fcd87"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
