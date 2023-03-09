class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.32.1/cecil.phar"
  version "7.32.1"
  sha256 "1cd3187a4885bdd35e642cf4a474c43c6d9e8cf8608ca79b3fea97bf9426ea3a"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
