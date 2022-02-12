\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{PS}[2022/02/12 Problem Sheet Class]
\LoadClass{article}

\RequirePackage[margin=3cm]{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}

\let\@module\relax
\def\module#1{\def\@module{#1}}

\let\@psnumber\relax
\def\psnumber#1{\def\@psnumber{#1}}

\def\@author{Dan Walters (2074286)}
\def\psnumber#1{\def\@psnumber{#1}}

\renewcommand\maketitle{
  \begin{center}
    {\huge\bfseries\@module\ Problem\ Sheet\ \@psnumber\par}
    {\vspace{2mm}\large\@author}
  \end{center}
}

\titleformat{\section}
{\normalfont\large\bfseries\filcenter} % format
{\thesection} %label
{1em} %Gap between number and name
{} % pre code

\titlespacing{\section}{0em}{0em}{-1ex}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\lhead{\@author}
\rhead{\@module\ PS\ \@psnumber}
\cfoot{Page\ \thepage}
