class Cecil < Formula
  desc "A simple and powerful content-driven static site generator."
  homepage "https://cecil.app"
  license "MIT"

  version "8.58.0"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.58.0/cecil.phar"
  sha256 "209cf13cdec4ffded85379c578972f337aaa74e9cd9879a7e88efd39986a429e"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
    ohai "Run `cecil` to get started"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
