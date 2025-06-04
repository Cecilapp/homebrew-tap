class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.47.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.47.2/cecil.phar"
  sha256 "078f577f33cab8ce6bf3c6af06cec9209eb0c72efa5a2b2c77e64c051defce3f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
