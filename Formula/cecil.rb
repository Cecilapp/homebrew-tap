class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.70.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.70.0/cecil.phar"
  sha256 "d06ae1e6547528780609899659cd28d703a9ff0a5f6c1036cfe225585861f5fe"

  #depends_on "php"
  uses_from_macos "php", since: :monterey

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
