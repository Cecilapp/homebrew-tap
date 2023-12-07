class CecilBeta < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.0.0-beta.7/cecil.phar"
  version "8.0.0-beta.7"
  sha256 "5dcde19a8e23411f5c3081df47a78b746da5365e7ba0473d6215ae3a4b801830"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil-beta"
    ohai "Run `cecil-beta` to get started"
  end

  test do
    shell_output("#{bin}/cecil-beta --version").include?(version)
  end
end
