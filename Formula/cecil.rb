class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.0.0-beta.3/cecil.phar"
  version "8.0.0-beta.3"
  sha256 "63fc04ccab25521a48fdf7cbe3240a75df3dfc21410ea80cbecc9719845eb70d"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
