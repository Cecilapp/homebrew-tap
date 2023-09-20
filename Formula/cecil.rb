class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.48.0/cecil.phar"
  version "7.48.0"
  sha256 "6101a1e54cf0a9a678198384a29b4dcd023ad1c3baff6e63f45502937aab7020"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
