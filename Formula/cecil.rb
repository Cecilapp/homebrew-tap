class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.27.6/cecil.phar"
  sha256 "921d330adf031aeeb1b13791f4dc8585685c62e375e260989f62f032b22ddc17"

  depends_on "php" if MacOS.version <= :el_capitan

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
