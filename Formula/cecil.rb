class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.106.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.106.1/cecil.phar"
  sha256 "be0277cc296095e7b3f1df666579dc00ed6a524eb4c84e4b4b44c664603a3115"

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
