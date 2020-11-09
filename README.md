# LaTeX Template for academic papers

This is a template I built for all of my papers in university.
It is tailored to fit my specific requirements and can be easily adapted.
It does not utilize any custom documentclass, but uses plain LaTeX only.

## Requirements

All you really need to compile the document is one of the implementations of LaTeX.
I recommend using `texlive`.
Texlive can be installed like this:

- Arch based: `pacman -S texlive-core` or `pacman -S texlive-most`
- Debian based: `apt-get install texlive-full`

## Compiling

The document can easily be compiled using `pdflatex`.
To get the glossary as well `makeglossaries` has to be run as well inbetween two runs of `pdflatex`.

```sh
pdflatex main.tex
makeglossaries main
pdflatex main.tex
```

This simple procedure can also be found in the `compile.sh` script.

## The Template

The template should be used like this:
Put all content in `.tex` files in the `./sections` folder.
Include them in the `main.tex` file like so:

```latex
\input{sections/name_of_file.tex}
```

To keep things tidy my suggestion is to have each section in it's own file.

### Figures

Figures and images are to be put into the template and included like so:

```latex
\begin{figure}[h]
\centering
\includegraphics[width=\textwidth]{figures/figure_01.jpg}
\caption{Here is where a caption would be}\label{fig:untargeted}
\end{figure}
```

You can specify a width in the `[width=\textwidth]` brackets. Replace `\textwidth` with `10cm` for example.
You can set a caption for the image using `\caption{}` and you can also reference the image by setting a `\label{}` and reference it by using `\ref{}`.

