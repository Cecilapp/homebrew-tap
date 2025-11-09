class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.70.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.70.2/cecil.phar"
  sha256 "09a2a01dbd2e20835bca686c5635f1da32c9af4c79e3a0479f723dae8b0098a0"

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
