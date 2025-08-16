class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.55.8"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.55.8/cecil.phar"
  sha256 "54ed84b86221939a04da20a54e66ea80c954bec710de8a7cbcaa84c030179ba6"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
