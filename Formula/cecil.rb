class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.29.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.29.2/cecil.phar"
  sha256 "c7759cec5896d9689749c48c7a59cbf55e7573f933513995b89df8cb578196a7"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
