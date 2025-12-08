class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.75.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.75.0/cecil.phar"
  sha256 "16791f573216443c2b81801d8c8de407dfc4fe0449025098740dfeefabfa4e89"

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
