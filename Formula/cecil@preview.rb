class CecilATPreview < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.86.0-beta.6"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.86.0-beta.6/cecil.phar"
  sha256 "021339eb7d7fb203b46d766030138c89f4f4a9ef7f17a251f3da1ebbae3ddd4e"

  keg_only :versioned_formula

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
