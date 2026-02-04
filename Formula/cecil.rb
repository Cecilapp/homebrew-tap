class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.80.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.80.3/cecil.phar"
  sha256 "96441084d6b73fa60792a0f6ccf00bbe867886299a25159c4026661f6a215945"

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
