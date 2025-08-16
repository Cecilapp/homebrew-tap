class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.9"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.9/cecil.phar"
  sha256 "7de145036fb781f84dfa758c0a8d5e943a84b7e5dc020f6b45699ca59e08b96f"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
