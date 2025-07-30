class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.52.7"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.52.7/cecil.phar"
  sha256 "ef09470e430085b293e2b4bec3df3a2ded5ac2c4899856938e167047e6ec50e7"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
