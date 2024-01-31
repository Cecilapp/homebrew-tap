class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.6.5/cecil.phar"
  version "8.6.5"
  sha256 "f89e37fb2f63cc2ae1e638e640a301ca5a235e2135456773391acaaaedd206ad"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
