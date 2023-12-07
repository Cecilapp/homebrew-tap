class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "xxxx"
  version "X.XX.X"
  sha256 "xxxx"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil-beta"
    ohai "Run `cecil-beta` to get started"
  end

  test do
    shell_output("#{bin}/cecil-beta --version").include?(version)
  end
end
