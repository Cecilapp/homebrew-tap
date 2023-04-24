class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.0.0-beta.2/cecil.phar"
  version "8.0.0-beta.2"
  sha256 "3ef1eb08630d112ad95d7c24f0c7243694e6eaa4d82e7c44b9109d15e017618c"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
