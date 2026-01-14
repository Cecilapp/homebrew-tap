class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.77.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.77.0/cecil.phar"
  sha256 "9173ec29a5c55efc5afe1a9a5b4322d4c3a84cdba5ed7111086be455e1f7ddee"

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
