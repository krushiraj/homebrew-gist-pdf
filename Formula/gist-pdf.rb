class GistPdf < Formula
  desc "Convert GitHub Gists to beautifully formatted PDFs"
  homepage "https://github.com/krushiraj/gist-pdf"
  url "https://github.com/krushiraj/gist-pdf/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
