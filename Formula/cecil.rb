class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.86.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.86.0/cecil.phar"
  sha256 "a24b41b61062e62af2e9cdaed253c9fac2b21bd309dae89cc3af827fdb22c062"

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
