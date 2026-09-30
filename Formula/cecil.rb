class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.4.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.4.3/cecil.phar"
  sha256 "a20434e26b764683aa407916f05edb39769c93d07d35006e002852d6da35fa01"

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
