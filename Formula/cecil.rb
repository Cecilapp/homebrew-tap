class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.33.3"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.33.3/cecil.phar"
  sha256 "ef4b62fa9b9c6948c8ce27133ba50cbcd7938a094a9e7056fe2ccad3473ba8ed"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
