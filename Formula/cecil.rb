class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.18.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.18.2/cecil.phar"
  sha256 "d69922134c10196279d46f616dcf8a6a3e0a9d2946f64bf071ef79dea830c690"

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
