class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.48.3/cecil.phar"
  version "7.48.3"
  sha256 "754c40e329367dc3750a04aa680c15cf8bb2916cfafa790b295c57dd1f234a28"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
