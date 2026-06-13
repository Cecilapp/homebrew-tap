class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.106.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.106.4/cecil.phar"
  sha256 "1f6d9aab99ec3ac8fb21874dfa37857c37dd1b5f38993c6aff398812e2cf706b"

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
