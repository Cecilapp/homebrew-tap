class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.23.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.23.1/cecil.phar"
  sha256 "76d655de7109e041717666488feae37212776e69c914d37310b94c67df337814"

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
