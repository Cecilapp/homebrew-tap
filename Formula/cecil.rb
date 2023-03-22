class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.33.3/cecil.phar"
  version "7.33.3"
  sha256 "83b10b5301ce6e95106418fda1323d00cb36f7d2a2fafbfa6344b08854ba8805"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
