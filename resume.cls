\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}
\LoadClass[10pt,letterpaper]{article}
\RequirePackage{xkeyval}

% no auxiliary files
\nofiles

\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\phonenumber}[1]{\def\@phonenumber{#1}}

\newcommand{\makeheader}{
  \global\let\@name\@empty
  \global\let\@email\@empty
  \global\let\@phonenumber\@empty
  \global\let\name\relax
  \global\let\email\relax
  \global\let\phonenumber\relax
}

\define@key{job}{title}{\def\@title{#1}}
\define@key{job}{startdate}{\def\@startdate{#1}}
\define@key{job}{enddate}{\def\@enddate{#1}}
\define@key{job}{location}{\def\@location{#1}}
\presetkeys{job}{enddate=Present}{}

\newenvironment{job}[1]
{
  \setkeys{job}{#1}
}
{}
\endinput