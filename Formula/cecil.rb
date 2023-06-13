class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.41.1/cecil.phar"
  version "7.41.1"
  sha256 "f69d5f79a3f1f35008dbb9c901abb35a58c47fcc7fd5c86373f19e25e85f834f"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
