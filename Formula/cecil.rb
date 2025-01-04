class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.22.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.22.1/cecil.phar"
  sha256 "530d8bcec6a2522aadceeb17a9206f64f3b402975a9d3f9e2c5e9c1a8a00a72b"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
