# Homebrew Tap for gist-pdf

This is the official Homebrew tap for [gist-pdf](https://github.com/krushiraj/gist-pdf) - a CLI tool to convert GitHub Gists to beautifully formatted PDFs.

## Installation

```bash
brew tap krushiraj/gist-pdf
brew install gist-pdf
```

## Usage

```bash
# Convert a Gist to PDF
gist-pdf "https://gist.github.com/username/gist-id"

# Convert a specific file from a Gist
gist-pdf "https://gist.github.com/username/gist-id#file-example-md"

# Custom output path
gist-pdf "https://gist.github.com/username/gist-id" -o output.pdf
```

## Requirements

- Chrome or Chromium browser (for PDF generation)

Install Chromium if not already installed:
```bash
brew install chromium
```

## More Info

For more information, visit the [gist-pdf repository](https://github.com/krushiraj/gist-pdf).
