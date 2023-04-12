class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.35.2/cecil.phar"
  version "7.35.2"
  sha256 "92c9e61ac75bd031344ade9fc961bdde1bd29c776f5b523852acc70a20ed3657"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
