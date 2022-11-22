class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.27.7/cecil.phar"
  version "7.27.7"
  sha256 "05d0907fd8503e647bdda0c71dc87f06460cca11b170e67016c34b38a9feec4d"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
