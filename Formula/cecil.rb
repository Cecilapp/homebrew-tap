class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.43.2/cecil.phar"
  version "7.43.2"
  sha256 "3f6da5020597cd4cdc19d4602c931bbe2f51ffbcabfe40b99cd6a8c491a10834"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
