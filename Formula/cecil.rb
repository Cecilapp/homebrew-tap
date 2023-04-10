class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.35.0/cecil.phar"
  version "7.35.0"
  sha256 "9bcac4cab3df8af49a03c82fc8d9eeb75ad09befbaf70cb0ce048eacb8336c89"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
