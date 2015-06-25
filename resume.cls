\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

% use article as base class
\LoadClass[10pt,letterpaper]{article}

\RequirePackage{xkeyval}

% no auxiliary files
\nofiles

% commands for defining contact information used by \makeheader
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\phonenumber}[1]{\def\@phonenumber{#1}}

% creates the header
\newcommand{\makeheader}{
  % clear
  \global\let\@name\@empty
  \global\let\@email\@empty
  \global\let\@phonenumber\@empty
  \global\let\name\relax
  \global\let\email\relax
  \global\let\phonenumber\relax
}

% define job keys
\define@key{job}{title}{\def\@title{#1}}
\define@key{job}{startdate}{\def\@startdate{#1}}
\define@key{job}{enddate}{\def\@enddate{#1}}
\define@key{job}{location}{\def\@location{#1}}
% default for enddate = 'Present'
\presetkeys{job}{enddate=Present}{}

% job environment
\newenvironment{job}[1]
{
  \setkeys{job}{#1}
}
{}
\endinput