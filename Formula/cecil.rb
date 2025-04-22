class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.36.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.36.0/cecil.phar"
  sha256 "eaa64a2216081e1abe83b9d8ee4d50ee3dddc698871ad380e1fcd65c782f32df"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
