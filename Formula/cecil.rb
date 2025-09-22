class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.66.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.66.1/cecil.phar"
  sha256 "84dc03a45b450699985555a75d2029090ff3f5d7954fd2da5bbaad1371b21cb6"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
