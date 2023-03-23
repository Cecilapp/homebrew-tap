class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.33.5/cecil.phar"
  version "7.33.5"
  sha256 "7da7d6b66d4208c518b238e8ee2a3004214242708984ded21ad5333e6af37670"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
