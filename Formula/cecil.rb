class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.90.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.90.0/cecil.phar"
  sha256 "d81c4d87c50cc3b713d25c5f1c741508429e6d116b7b2976a6ec023687290333"

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
