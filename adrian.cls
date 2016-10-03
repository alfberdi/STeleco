\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{adrian}
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\setlength{\textwidth}{190mm}
\setlength{\textheight}{282mm}
\pagenumbering{arabic}

\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage[utf8]{inputenc}
\RequirePackage{epstopdf}
\RequirePackage{xfrac}
\RequirePackage{float}
\RequirePackage{xcolor}
%\RequirePackage[a4paper,margin=1.5cm]{geometry}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

\newcounter{example}[section]

\newenvironment{example}[1][]
{\rule{0.5\textwidth}{1pt}
\refstepcounter{example}\par\medskip \noindent \textbf{Ejemplo~\theexample. #1}\\}
{\\\rule{0.5\textwidth}{1pt}}

\newenvironment{exercise}[1][]
{\textbf{\underline{Problema}~\thesection.#1}\\}
{\\}

\newcommand\myworries[1]{\textcolor{red}{#1}\\}
%\renewcommand\myworries[1]{}
%\renewenvironment{equation}[1]
