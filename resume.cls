\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

% use article as base class
\LoadClass[11pt,letterpaper]{article}

\RequirePackage{xkeyval}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage[top=0.75in, bottom=0.75in, left=1in, right=1in]{geometry}

% no auxiliary files
\nofiles

% redefine \section to adjust spacing before and after
\renewcommand\section{\@startsection{section}{1}{\z@}
                                    {-1.5ex \@plus -.5ex \@minus -.2ex}
                                    {1ex \@plus .1ex}
                                    {\normalfont\Large\bfseries}}

% no indent for entire document
\setlength\parindent{\z@}
% no spacing extra spacing for lists
\setlist[itemize]{noitemsep, topsep=0pt}
% no page numbering
\pagenumbering{gobble}

\define@key{header}{name}{\def\@headername{#1}}
\define@key{header}{website}{\def\@headerwebsite{#1}}
\define@key{header}{email}{\def\@headeremail{#1}}
\define@key{header}{phonenumber}{\def\@headerphonenumber{#1}}

\newenvironment{header}[1]
{
    \setkeys{header}{#1}
    \begin{multicols}{2}
        {\LARGE\textbf{\@headername}} \\
        {\large\@headerwebsite}
        \columnbreak

        \hfill {\large\@headeremail}

        \hfill {\large\@headerphonenumber}
    \end{multicols}
}
{
    \hrule
}

% define job keys
\define@key{job}{title}{\def\@jobtitle{#1}}
\define@key{job}{startdate}{\def\@jobstart/{#1}}
\define@key{job}{enddate}{\def\@jobend{#1}}
\define@key{job}{employer}{\def\@jobemployer{#1}}
\define@key{job}{location}{\def\@joblocation{#1}}
% default for enddate = 'Present'
\presetkeys{job}{enddate=Present}{}

% job environment
\newenvironment{job}[1]
{
    \setkeys{job}{#1}
    \textbf{\@jobemployer} \hfill \@jobstart/ - \@jobend \\ %\@joblocation \\
    \textsc{\@jobtitle} \hfill 
   % \@jobemployer
}
{
    \smallskip
}

% define degree keys
\define@key{degree}{title}{\def\@degreetitle{#1}}
\define@key{degree}{school}{\def\@degreeschool{#1}}
\define@key{degree}{date}{\def\@degreedate{#1}}

% degree environment
\newenvironment{degree}[1]
{
    \setkeys{degree}{#1}
    \textbf{\@degreetitle} \hfill \@degreedate \\
    \@degreeschool
}
{
    \smallskip
}

% define project keys
\define@key{project}{title}{\def\@projecttitle{#1}}
\define@key{project}{link}{\def\@projectlink{#1}}

% project environement
\newenvironment{project}[1]
{
    \setkeys{project}{#1}
    \textbf{\@projecttitle}: \@projectlink
}
{
    \smallskip
}

% skill command
\newcommand{\skill}[1]{\noindent\textbf{#1}}
\endinput
