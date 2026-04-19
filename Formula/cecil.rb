class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.92.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.92.0/cecil.phar"
  sha256 "fcf8ab2c075c190e78c0d1f379c71113ee2c7dc99bc7a9d4b5efc6b0033188d5"

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
