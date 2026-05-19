class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.94.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.94.0/cecil.phar"
  sha256 "9bec3c3dbf5d6237b4b93308fcf57394abaf6ef0e85e180209fc5a8883f9c2c5"

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
