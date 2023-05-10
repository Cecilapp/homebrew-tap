class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.36.5/cecil.phar"
  version "7.36.5"
  sha256 "733862a6d40e2e0f1084bd44987aab593f2f4331f346d787ab31509ac670ea47"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
