class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/7.54.2/cecil.phar"
  version "7.54.2"
  sha256 "ef6b263db0971cfb82bc27f7f01d4b99b0080f3b143099bd6710454c6c88e7af"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
