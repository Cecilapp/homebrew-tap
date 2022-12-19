class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.28.2/cecil.phar"
  version "7.28.2"
  sha256 "4e7a649cb63d28b3807771be0f02f16f3e805bd385be779874e1fb7454bee664"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
