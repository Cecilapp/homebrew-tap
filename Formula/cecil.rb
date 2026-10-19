class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.19.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.19.0/cecil.phar"
  sha256 "724eab13754e81ad05df384e77019c956b263e5ab779c1ec109fc9afb4a8de25"

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
