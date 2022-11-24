class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.28.0/cecil.phar"
  version "7.28.0"
  sha256 "b48cf88ccdbb7c9ebf84bf55dbbe0395d07331e6c6d76740d853f07a4f46224e"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
