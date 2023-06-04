class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.40.0/cecil.phar"
  version "7.40.0"
  sha256 "6c563e019768e52655f3e96e4313bf4130938ad1a5df547dda9011c57c4afb6c"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
