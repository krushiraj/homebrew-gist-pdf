class GistPdf < Formula
  desc "Convert GitHub Gists to beautifully formatted PDFs"
  homepage "https://github.com/krushiraj/gist-pdf"
  url "https://github.com/krushiraj/gist-pdf/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4bacff955fced6fa1c8935590933bc670953935945c061ac34221cd0ae54fbb9"
  license "MIT"

  depends_on "rust" => :build

  def install
    cd "cli" do
      system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    end
  end

  def caveats
    <<~EOS
      gist-pdf requires Chrome or Chromium for PDF generation.
      Install with: brew install chromium
    EOS
  end

  test do
    assert_match "gist-pdf", shell_output("#{bin}/gist-pdf --help")
  end
end
