class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.40.1/cecil.phar"
  version "7.40.1"
  sha256 "0a994ae3f43386fb7d036d3a40fa9f1570dc00e56ed03828ae5fbf275beb8526"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
