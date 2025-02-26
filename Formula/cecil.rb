class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.31.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.31.0/cecil.phar"
  sha256 "882e9ef3f35ae9163238a58e188a72a95789d66a9695ef38cea9fd1b09af33c9"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
