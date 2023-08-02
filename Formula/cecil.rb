class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/7.44.0/cecil.phar"
  version "7.44.0"
  sha256 "6c542875dfaa33c6d50551dfdbb735b0d27ecae3418f8fbd2c207f5388eb2355"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
