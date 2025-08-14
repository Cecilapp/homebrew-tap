class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.3/cecil.phar"
  sha256 "c340ff9ba6fbc19c3f6a2e6450d46e0b46b10aa9c9959cb4f00efcd468d4565c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
