class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.43.0/cecil.phar"
  version "7.43.0"
  sha256 "c4cce4f778d5abcc310491b802dae83e9763d17c6a1176de7b97383e7ae12c1b"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
