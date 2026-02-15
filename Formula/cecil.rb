class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.84.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.84.0/cecil.phar"
  sha256 "5a08bddbe749f6cf7fd4dbec47e3be6dd93eeafcbaabd85aadfd55c17124f968"

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
