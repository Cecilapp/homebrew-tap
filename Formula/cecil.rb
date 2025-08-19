class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.58.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.58.2/cecil.phar"
  sha256 "51bdbcba3f75dcebfc674c58846e78fd83863418c70c5b087ce17f85b1594960"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
