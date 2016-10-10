\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{adrian}
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\setlength{\textwidth}{190mm}
\setlength{\textheight}{282mm}
\pagenumbering{arabic}

\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage[utf8]{inputenc}
\RequirePackage{xfrac}
\RequirePackage{float}
\RequirePackage{xcolor}
%\RequirePackage{glossaries}
%\RequirePackage{tocloft}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}


%\newcommand{\listexampletitle}{Lista de Ejemplos}

%\newlistof[section]{examples}{exp}{\listexampletitle}
\renewcommand{\contentsname}{Índice}
\newcounter{example}[section]

\newenvironment{example}[1][]
{\\\rule{0.5\textwidth}{1pt}
\refstepcounter{example}\par\medskip \noindent \textbf{Ejemplo~\theexample. #1}\\}
{\\\rule{0.5\textwidth}{1pt}}

\newenvironment{exercise}[1][]
{\textbf{\underline{Problema}~\thesection.#1}\\}
{\\}

\newcommand\myworries[1]{\textcolor{red}{#1}\\}
%\renewcommand\myworries[1]{}
%\renewenvironment{equation}[1]
