class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.26.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.26.0/cecil.phar"
  sha256 "b7c48a2c4bd37710e654bf4f4d0fbc7731749391c4630fa3befe97482f767f3f"

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
