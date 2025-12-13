class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.75.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.75.1/cecil.phar"
  sha256 "f20207e8feabbf0f304e91d60d55e2a6ef6cf4649faeb8080865b33cf8a36233"

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
