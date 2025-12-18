class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.75.4"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.75.4/cecil.phar"
  sha256 "4fb89a6072c5995839c770c097247ee6068bbd92194869f9305d4f660685108f"

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
