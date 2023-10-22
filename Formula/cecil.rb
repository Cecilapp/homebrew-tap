class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.51.0/cecil.phar"
  version "7.51.0"
  sha256 "b64cf2fca9579ca129e4558dae42e7ec73c1ca1dfa8dc8a687748b77cee764ee"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
