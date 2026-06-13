class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.106.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.106.0/cecil.phar"
  sha256 "86e93355007ea3cffb70a3785deaf89b52e8eb72ac85f6d35d6a47b86581953a"

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
