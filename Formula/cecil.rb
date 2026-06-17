class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.110.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.110.0/cecil.phar"
  sha256 "d49857d79660b2b23f24e8d18fce2ec523164d7cbdab4f3de4bf66ba95e9133d"

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
