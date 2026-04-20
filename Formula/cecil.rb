class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.93.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.93.0/cecil.phar"
  sha256 "61027d8faeffbb1f0624b023c5bd50796c3d6f8d4f27c85fa4fa9bb68f773f38"

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
