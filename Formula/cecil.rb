class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.80.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.80.2/cecil.phar"
  sha256 "a463fb97efc6c5bb2cbed311c3b900840fe750a6d6b922b04dd55801647ecae3"

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
