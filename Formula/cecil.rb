class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.28.4/cecil.phar"
  version "7.28.4"
  sha256 "dcc62fd3fb8f16d75e1c2b4e5d72bd8febd8653dce9a17c49ce551ee22654751"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
