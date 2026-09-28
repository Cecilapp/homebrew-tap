class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "9.3.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/9.3.0/cecil.phar"
  sha256 "2e8ba6c917d5d601430783c5b9af2968be72fc73c20f013934c57fe0f0d18818"

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
