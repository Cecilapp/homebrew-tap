class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.84.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.84.1/cecil.phar"
  sha256 "09f4d3e74dfa3e53ba056a747abd5e1d2482c97ca9ffa2bac36697093e8edccb"

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
