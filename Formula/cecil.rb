class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.39.1/cecil.phar"
  version "7.39.1"
  sha256 "c688add4a865dcf003d8e7db6fba068ec9ba908ea097c76ff7720f201d7f65d5"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
