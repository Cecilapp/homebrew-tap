class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.41.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.41.0/cecil.phar"
  sha256 "5aaa1cb35ba6df688532a16c84155d85d9e4d3ec1ff2289311626df1c824e841"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
