class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.39.10"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.39.10/cecil.phar"
  sha256 "bb3b8881b60e42431862f4753e1c1b5dec9ef752a6f82e0f075fe4646eda1002"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
