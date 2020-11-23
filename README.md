# latex-action

> Github action to compile a latex project and upload the pdf in the actions section

## Usage

* Your project must be build with `make`
* In your Makefile you can use everything that `texlive-full` supports 

```
name: Build LaTeX document
on: [push]
jobs:
  build_latex:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2
      - name: Compile LaTeX document
        uses: lmoesle/latex-action@latest
      - name: Upload Pdf
        uses: actions/upload-artifact@v2
        with:
          name: upload pdf
          path: <your-file>.pdf
```

## Example Makefile

```
all: example.pdf

example.pdf: example.tex
	pdflatex -interaction=nonstopmode  example.tex
	biber example
	pdflatex -interaction=nonstopmode  example.tex
```
