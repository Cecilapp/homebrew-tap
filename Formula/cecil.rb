class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.9.0/cecil.phar"
  version "8.9.0"
  sha256 "12b5a46da5d7fafec9028db6e1647cf8d8fb0327bf4d12081c3bc5e3609970a7"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
