\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}
\LoadClass[10pt,letterpaper]{article}

% no auxiliary files
\nofiles

\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\phonenumber}[1]{\def\@phonenumber{#1}}

\newcommand{\makeheader}{}

\endinput