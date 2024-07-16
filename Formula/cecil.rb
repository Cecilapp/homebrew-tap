class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.13.2/cecil.phar"
  version "8.13.2"
  sha256 "7ce07c8308c46f0c12699a4cfeb90af00aa12be0401e7763e0ea366e56279d3c"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
