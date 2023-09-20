class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.48.1/cecil.phar"
  version "7.48.1"
  sha256 "47a2846e7a39f05280a481abe4d18500d65560a2072dc668ab640357de38c065"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
