class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.45.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.45.2/cecil.phar"
  sha256 "227935e85f313c715c03bc73ee72da06ef599cfa36c2505a92856ffb99b45642"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
