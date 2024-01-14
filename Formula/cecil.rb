class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  url "https://github.com/Cecilapp/Cecil/releases/download/8.3.1/cecil.phar"
  version "8.3.1"
  sha256 "97bfabfeb5064012cb89deb3a2bf5a2f2784203a81a4d85e998856eef5e70ab6"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
