class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.50.1"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.50.1/cecil.phar"
  sha256 "6ed17bfdd4e84a29f828ec34a901f21f5b64cb60bdf4283db7685bd499ca966d"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
