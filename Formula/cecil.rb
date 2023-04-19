class Cecil < Formula
  desc "Your content driven static site generator."
  homepage "https://cecil.app"
  url "https://github.com/Cecilapp/Cecil/releases/download/8.0.0-beta.1/cecil.phar"
  version "8.0.0-beta.1"
  sha256 "6f4459bd398d784a818f588730c37ea99c41086ab818d0bba02eb15fc88ecf97"
  license "MIT"

  depends_on "php"

  def install
    bin.install "cecil.phar" => "cecil"
  end

  test do
    shell_output("#{bin}/cecil --version").include?(version)
  end
end
