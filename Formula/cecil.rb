class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.69.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.69.0/cecil.phar"
  sha256 "0ba88c512fc44d44b4d912446b93ba4477247fa0fffefc511d44840d7a4fd8fd"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
