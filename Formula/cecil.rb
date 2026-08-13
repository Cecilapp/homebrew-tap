class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.117.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.117.2/cecil.phar"
  sha256 "2500c47fdd01ad4924a48746e9aee3c938e64a3cee30f6f0613ac364eb102f66"

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
