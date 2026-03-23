class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.87.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.87.0/cecil.phar"
  sha256 "6676780dac93ae0fcae03baf086aae1f77b7effee676b557e9166d1a957537ac"

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
