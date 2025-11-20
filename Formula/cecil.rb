class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.72.2"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.72.2/cecil.phar"
  sha256 "b514fbab4ba9af73ff7efa13953f7c746634a517a10a380b93c88a1179775dda"

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
