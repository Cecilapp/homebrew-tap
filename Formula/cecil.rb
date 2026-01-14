class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.79.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.79.0/cecil.phar"
  sha256 "ac08dce9cbfac0cfe88bf63ed0644344deca19a69e60e8c79c8edcc857284ed7"

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
