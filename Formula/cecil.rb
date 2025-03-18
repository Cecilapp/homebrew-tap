class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.34.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.34.3/cecil.phar"
  sha256 "622176de4063018d7aee3812035efc8062248001f73c773c54bda69a99f3fe9b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
