class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.111.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.111.2/cecil.phar"
  sha256 "8b6c7e53ccfd34db1c5718e01ecd3e07b31895d78a402ee74205c43fe536f631"

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
