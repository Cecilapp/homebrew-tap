class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.46.9/cecil.phar"
  version "7.46.9"
  sha256 "d84a4eaff3c1a52cecda70b4196c5ed0f05d16d3f1bd5a01587ca1a6db78e233"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
