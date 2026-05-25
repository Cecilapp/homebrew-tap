class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.96.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.96.0/cecil.phar"
  sha256 "76f31bc46d8a7f2560c6dbb9699e55b8838f7c65885656cde90f76831c67f339"

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
