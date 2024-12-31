class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.22.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.22.0/cecil.phar"
  sha256 "16f1d7d3879a5425709e9123bdfccbd5a875f0e7478748b04a94fe01aadaf23f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
