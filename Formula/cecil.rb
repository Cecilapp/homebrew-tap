class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.33.0/cecil.phar"
  version "7.33.0"
  sha256 "559051bd0cb75a8b5b905bb6bf1fd466cee2dcd24a2eb4867ddc250262422660"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
