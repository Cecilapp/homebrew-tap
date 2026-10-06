class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.9.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.9.0/cecil.phar"
  sha256 "c367ddc8a6e9a866a3397bfd1e23b0ded4549732de983ae0bd1c7c3bfc116ff3"

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
