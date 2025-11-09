class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.70.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.70.4/cecil.phar"
  sha256 "81e9f800c15720cdf24087a9ccd11a8c273610ef523362c780b7e311a3bd9843"

  #depends_on "php"
  uses_from_macos "php", since: :monterey

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
