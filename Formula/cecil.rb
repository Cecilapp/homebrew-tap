class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.114.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.114.1/cecil.phar"
  sha256 "db58ef4fe8a9aa77e882402d4f7c1114841eaef550f03f4d8141cb53072bac65"

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
