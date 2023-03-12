class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.32.3/cecil.phar"
  version "7.32.3"
  sha256 "4b40868b4b0e5cbb4cd3cabbd7c1186b331312ff9a40a0cfbdd7efde99290624"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
