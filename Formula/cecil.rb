class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.12"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.12/cecil.phar"
  sha256 "eeecb48daef19163439e72c56ed2a69433eef212588ba9ebb3585d63634e73e0"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
