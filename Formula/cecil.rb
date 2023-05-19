class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.36.8/cecil.phar"
  version "7.36.8"
  sha256 "aea609c9808ebd5ad8817c3bd0398c34c9d243df52fad2a4ecad225b2a20dd2f"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
