class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.40.3/cecil.phar"
  version "7.40.3"
  sha256 "8eaf9a7f8d2e92631a146dbf124fd3a2a4809079e8520e3eb7dba6c8903bf5b3"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
