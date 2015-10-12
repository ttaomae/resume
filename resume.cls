\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

% use article as base class
\LoadClass[11pt,letterpaper]{article}

\RequirePackage{xkeyval}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{xcolor}
\RequirePackage{changepage}
\RequirePackage[top=0.75in, bottom=0.75in, left=1in, right=1in]{geometry}

% use Helvetica as font
\RequirePackage[scaled]{helvet}
\RequirePackage[T1]{fontenc}
\renewcommand\familydefault{\sfdefault}

% use ragged right to prevent hyphenation
\raggedright

% no auxiliary files
\nofiles

% redefine \section to adjust spacing before and after
\renewcommand\section{\@startsection{section}{1}{\z@}
                                    {-1.5ex \@plus -.5ex \@minus -.2ex}
                                    {1ex \@plus .1ex}
                                    {}}

% set style of section and add line under section title
\RequirePackage{titlesec}
\titleformat{\section}
  {\normalfont\Large\bfseries}{}{1em}{}[{\titlerule[1pt]}]

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
        {\huge\textbf{\@headername}} \\
        {\large\@headerwebsite}
        \columnbreak

        \begin{flushright}
            \large\@headeremail \\
            \large\@headerphonenumber
        \end{flushright}
    \end{multicols}
}
{
    \color{gray}\hrule height 5pt
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
    \begin{adjustwidth}{+0.5in}{+0in}

    \textbf{\@jobemployer} \hfill \@jobstart/ - \@jobend \\ %\@joblocation \\
    \textsc{\@jobtitle} \hfill 
   % \@jobemployer
}
{
    \end{adjustwidth}
}

% define degree keys
\define@key{degree}{title}{\def\@degreetitle{#1}}
\define@key{degree}{school}{\def\@degreeschool{#1}}
\define@key{degree}{date}{\def\@degreedate{#1}}

% degree environment
\newenvironment{degree}[1]
{
    \setkeys{degree}{#1}
    \begin{adjustwidth}{+0.5in}{+0in}

    \textbf{\@degreetitle} \hfill \@degreedate \\
    \@degreeschool
}
{
    \end{adjustwidth}
}

% define project keys
\define@key{project}{title}{\def\@projecttitle{#1}}
\define@key{project}{link}{\def\@projectlink{#1}}
\define@key{project}{language}{\def\@projectlanguage{#1}}
% default for link = blank
\presetkeys{project}{link=}{}

% project environement
\newenvironment{project}[1]
{
    \setkeys{project}{#1}
    \begin{adjustwidth}{+0.5in}{+0in}

    \textbf{\@projecttitle}
    % if no link
    \if&\@projectlink&
        % nothing
    \else
        - \@projectlink
    \fi
    
    \textsc{\@projectlanguage}
}
{
    \end{adjustwidth}
}


\define@key{skill}{title}{\def\@skilltitle{#1}}
\newenvironment{skill}[1]
{
    \setkeys{skill}{#1}
    \begin{adjustwidth}{+0.5in}{+0in}

    \noindent\textbf{\@skilltitle}
}
{
    \end{adjustwidth}
}
\endinput
