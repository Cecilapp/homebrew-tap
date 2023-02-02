class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.29.1/cecil.phar"
  version "7.29.1"
  sha256 "a8dbab85b02c249ce1f06e73d11e2f4ef482eb905feb686662cfdf23deeb9915"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
