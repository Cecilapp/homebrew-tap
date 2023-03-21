class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.33.1/cecil.phar"
  version "7.33.1"
  sha256 "db363ce2b637c0e291a12ba98bf6d382f597d165fbe9aca823e1548f4b453a9e"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
