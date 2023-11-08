class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"

  url "https://github.com/Cecilapp/Cecil/releases/download/7.53.0/cecil.phar"
  version "7.53.0"
  sha256 "579ccb1d8983f4479249be4ccc3368841ccece012077f2611813577fb057f39a"

  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
