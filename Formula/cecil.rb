class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.0.0-beta.5/cecil.phar"
  version "8.0.0-beta.5"
  sha256 "3cde3c00c51af84ae3f7ac7b514a30bcee9e27b857acfd2ac281a6148a1b299b"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
