class CecilAT7 < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "7.55.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.55.0/cecil.phar"
  sha256 "4b90fd0053ab3c8dc5bfa8e3ea3fe7a73521ce8aff0a4d4dcbe40b2231bc135c"

  keg_only :versioned_formula

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
