class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.95.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.95.0/cecil.phar"
  sha256 "328648fe4bd03ca7c57795afa3079d1e19d6f8fd71fbb9939f08d2a3f72fd212"

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
