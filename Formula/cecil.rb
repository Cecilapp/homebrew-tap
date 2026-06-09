class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.104.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.104.0/cecil.phar"
  sha256 "de8ee0c4868f2922530299a4d7e52e39d6533c528e0833c3e841be243ba09632"

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
