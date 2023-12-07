class CecilBeta < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.0.0-beta.6/cecil.phar"
  version "8.0.0-beta.6"
  sha256 "494704e221b1d5f707fabd1940d29ae3d23c30f93f774f93af58b72674459c3e"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil-beta"
    ohai "Run `cecil-beta` to get started"
  end

  test do
    shell_output("#{bin}/cecil-beta --version").include?(version)
  end
end
