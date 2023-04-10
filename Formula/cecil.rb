class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.35.1/cecil.phar"
  version "7.35.1"
  sha256 "5e1d6db5c46d1b39d2302a0e362606d26ff4b478f3b69e504ed4f1fbf7f06934"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
