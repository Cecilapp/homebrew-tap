class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.59.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.59.0/cecil.phar"
  sha256 "237dac89a68ab8825d54130772c3d44e0caa9a204fb3039111b20d925f050875"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
