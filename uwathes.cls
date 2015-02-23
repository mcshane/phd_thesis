%%
%% This is file `uwathes.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uwathes.dtx 
%% 
%%% ===================================================================
%%%  @LaTeX-file{
%%%     filename = "uwathes.dtx",
%%%     version  = "1.1a",
%%%     date     = "1999/12/06",
%%%     time     = "16:58:42 EST",
%%%     checksum = "53355 1065 4605 45824"
%%%     author   = "Greg Gamble",
%%%     address  = "Centre for Discrete Mathematics & Computing,
%%%                 Department of Computer Science
%%%                       & Electrical Engineering,
%%%                 The University of Queensland,
%%%                 Queensland 4072,
%%%                 Australia",
%%%     telephone = "+61 7 336 52425,"
%%%     FAX       = "+61 7 336 54999,
%%%     copyright = "Copyright (C) 1996,1997,1998,1999 Greg Gamble,
%%%                  all rights reserved.  Copying of this file is
%%%                  authorised only if either:
%%%                   (1) you make absolutely no changes to your copy,
%%%                       including name; OR
%%%                   (2) if you do make changes, you first rename it
%%%                       to some other name.
%%%                  This file may be distributed under the terms of
%%%                  the LaTeX Project Public License, as described
%%%                  in lppl.txt in the base LaTeX distribution.",
%%%     email     = "gregg@csee.uq.edu.au (Internet)",
%%%     codetable = "ISO/ASCII",
%%%     keywords  = "latex, amslatex, ams-latex, installation",
%%%     supported = "yes",
%%%     abstract  = "This is class \cls{uwathes}. It is built on the
%%%                  standard \latex/ \cls{book} class
%%%                  with option \opt{a4paper}.
%%%                  It provides a document class for typesetting PhD
%%%                  theses that complies with specifications of
%%%                  the University of Western Australia."
%%%     docstring = "The checksum field above contains a CRC-16
%%%                  checksum as the first value, followed by the
%%%                  equivalent of the standard UNIX wc (word
%%%                  count) utility output of lines, words, and
%%%                  characters.  This is produced by Robert
%%%                  Solovay's checksum utility.",
%%%  }
%%% ===================================================================
\typeout{uwathes 1.1a}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uwathes}[1999/12/06 v1.1a]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\newif\if@honours
\DeclareOption{honours}{\@honourstrue}
\newif\if@library
\DeclareOption{library}{\@librarytrue}
\newif\if@nolibrary
\DeclareOption{nolibrary}{\@libraryfalse}
\ExecuteOptions{library}
\ProcessOptions\relax
\LoadClass[a4paper]{book}
\def\calclayout{\global\textheight\textbodyheight
  \global\advance\textheight -\headheight
  \global\advance\textheight -\headsep
  \global\advance\textheight -\footskip
  \global\oddsidemargin\paperwidth
  \global\advance\oddsidemargin -\textwidth
  \global\divide\oddsidemargin\tw@ \global\advance\oddsidemargin -1truein
  \global\evensidemargin\oddsidemargin
  \global\topmargin\paperheight
  \global\advance\topmargin -\textbodyheight
  \global\divide\topmargin\tw@ \global\advance\topmargin -1truein\relax
  \if@library \global\addtolength{\evensidemargin}{-1cm}
              \global\addtolength{\oddsidemargin}{1cm}
  \fi}
\newdimen\textbodyheight \textbodyheight\paperheight
\addtolength{\textbodyheight}{-4cm}
\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-6cm}
\normalsize
\setlength{\headheight}{2\baselineskip}
\calclayout
\setlength{\marginparsep}{4mm}
\setlength{\marginparwidth}{12mm}
\RequirePackage{amsmath}\relax
\ifx\relax\mathfrak \@xp\@gobbletwo \else \let\mathfrak\relax \fi
\RequirePackage{amsfonts}\relax
\RequirePackage{amsthm}\relax
\renewenvironment{proof}[1][\proofname]{\par
  \normalfont
  \topsep6\p@\@plus6\p@ \trivlist
  \item[\hskip\labelsep\bfseries
    #1\@addpunct{.}]\ignorespaces
  }{%
  \qed\endtrivlist
  }%
\allowdisplaybreaks[1]
\renewcommand{\title}[2][]{\gdef\shorttitle{#1}\gdef\@title{#2}}
\edef\title{\@nx\@dblarg
  \@xp\@nx\csname\string\title\endcsname}
\renewcommand{\author}[2][]{\gdef\shortauthors{#1}\gdef\authors{#2}}
\edef\author{\@nx\@dblarg
  \@xp\@nx\csname\string\author\endcsname}
\let\shortauthors\@empty   \let\authors\@empty
\def\thismonth{\ifcase\month\or
               January\or February\or March\or April\or May\or June\or
               July\or August\or September\or October\or
               November\or December\fi}
\newcommand{\dept}[1]{\gdef\department{#1}}
\newcommand{\institution}[1]{\gdef\theinstitution{#1}}
\newcommand{\degree}[1]{\gdef\thedegree{#1}}
\renewcommand{\thanks}[1]{\let\thankses\@empty
                          \g@addto@macro\thankses{\thanks{#1}}}
\dept{School of Physics}
\institution{The University of Western Australia}
\if@honours
  \degree{Bachelor Science with Honours}
\else
  \degree{Doctor of Philosophy}
\fi
\if@honours
  \thanks{This dissertation is submitted in partial fulfilment\\
          of the requirements for the degree of\\
          \thedegree\\
          at \theinstitution\\
          \department}
\else
  \thanks{This thesis is presented for the degree of\\
          \thedegree\\
          of \theinstitution\\
          \department}
\fi
\renewcommand\maketitle{\par
  \frontmatter
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \@maketitle
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{\cleardoublepage \thispagestyle{empty}%
  \begingroup \topskip\z@skip
  \null\vfil
  \begingroup
  \vspace*{2cm}
  \Huge\bfseries \centering
  \openup\medskipamount
  \@title\par\vspace{24pt}%
  \centering
  \mdseries\authors\par\bigskip
  \endgroup
  \vspace{6cm}
  \begin{center}
    \ifx\@empty\thankses\else\@setthanks\\\fi
    \ifx\@empty\@date\thismonth, \number\year\else\@date\fi
  \end{center}
  \endgroup}
\def\@setthanks{\def\thanks##1{\par##1\@addpunct.}\thankses}
\newcommand{\abstractname}{Abstract}
\newenvironment{abstract}{\cleardoublepage
     \section*{\abstractname}
     \@mkboth{\abstractname}{\abstractname}%
     \addcontentsline{toc}{chapter}{\abstractname}}{}
\newenvironment{acknowledgements}%
   {\renewcommand{\abstractname}{Acknowledgements}%
     \begin{abstract}}
   {\end{abstract}}
\newenvironment{dedication}%
   {\renewcommand{\abstractname}{Dedication}%
     \begin{abstract}}
   {\end{abstract}}
\newenvironment{preface}%
   {\renewcommand{\abstractname}{Preface}%
     \begin{abstract}}
   {\end{abstract}}
\newcommand{\glossaryname}{Glossary}
\newenvironment{theglossary}%
   {\chapter*{\glossaryname}
     \@mkboth{\glossaryname}{\glossaryname}%
     \addcontentsline{toc}{chapter}{\glossaryname}
     \thispagestyle{plain}
     \begin{description}}
   {\end{description}}
\newcommand{\listsymbolsname}{List of Symbols}
\newenvironment{thesymbols}%
   {\chapter*{\listsymbolsname}
     \@mkboth{\listsymbolsname}{\listsymbolsname}%
     \addcontentsline{toc}{chapter}{\listsymbolsname}
     \thispagestyle{plain}
     \begin{description}}
   {\end{description}}
\def\makesymbols{%
  \newwrite\@symbolsfile
  \immediate\openout\@symbolsfile=\jobname.sym
  \def\symbols{\@bsphack\begingroup
               \@sanitize
               \@wrsymbols}\typeout
      {Writing symbols file \jobname.sym }%
   \let\makesymbols\@empty
}
\@onlypreamble\makesymbols
\def\@wrsymbols#1{%
      \protected@write\@symbolsfile{}%
          {\string\symbolsentry{#1}{\thepage}}%
      \endgroup
      \@esphack}
\def\symbols{\@bsphack\begingroup\@sanitize\@index}
\newcommand\printglossary{\@input{\jobname.gls}}%
\newcommand\printsymbols{\@input{\jobname.smb}}%
\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \addcontentsline{toc}{chapter}{\listfigurename}
      \@mkboth{\listfigurename}{\listfigurename}}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \addcontentsline{toc}{chapter}{\listtablename}
      \@mkboth{\listtablename}{\listtablename}}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname
        \addcontentsline{toc}{chapter}{\bibname}
        \@mkboth{\bibname}{\bibname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\renewenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \addcontentsline{toc}{chapter}{\indexname}
                \@mkboth{\indexname}{\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\seename{see also}%
\newcommand\see[2]{{\em \seename\/} #1}%
\newcommand\printindex{\@input{\jobname.ind}}%
\newcommand{\indx}[1]{#1\index{#1}}
\newcommand{\gloss}[1]{\emph{#1}\glossary{#1}}
\newcommand{\symb}[1]{#1\symbols{\ensuremath{#1}}}
\newdimen\linespacing
\normalsize
\setlength{\linespacing}{\baselineskip}
\newdimen\normalparindent
\setlength{\normalparindent}{18pt}
\def\@makechapterhead#1{%
  \begingroup
  \fontsize{\@xivpt}{18}\bfseries\centering
    \ifnum\c@secnumdepth>\m@ne
      \leavevmode \hskip-\leftskip
      \rlap{\vbox to\z@{\vss
          \centerline{\normalsize\mdseries
              \uppercase\@xp{\chaptername}\enspace\thechapter}
          \vskip 3pc}}\hskip\leftskip\fi
     #1\par \endgroup
  \skip@34\p@ \advance\skip@-\normalbaselineskip
  \vskip\skip@ }
\def\@makeschapterhead#1{%
  \begingroup
  \fontsize{\@xivpt}{18}\bfseries\centering
  #1\par \endgroup
  \skip@34\p@ \advance\skip@-\normalbaselineskip
  \vskip\skip@ }
\def\section{\@startsection{section}{1}%
  \z@{.7\linespacing\@plus\linespacing}{.5\linespacing}%
  {\normalfont\bfseries\centering}}
\def\subsection{\@startsection{subsection}{2}%
  \normalparindent{.5\linespacing\@plus.7\linespacing}{-.5em}%
  {\normalfont\bfseries}}
\def\subsubsection{\@startsection{subsubsection}{3}%
  \normalparindent\z@{-.5em}%
  {\normalfont\itshape}}
\def\paragraph{\@startsection{paragraph}{4}%
  \normalparindent\z@{-\fontdimen2\font}%
  \normalfont}
\def\subparagraph{\@startsection{subparagraph}{5}%
  \z@\z@{-\fontdimen2\font}%
  \normalfont}
\def\appendix{\par
  \c@chapter\z@ \c@section\z@
  \let\chaptername\appendixname
  \def\thechapter{\@Alph\c@chapter}}
\RequirePackage{fancyhdr}
\addtolength{\headwidth}{5truemm}
\lhead[\fancyplain{\hskip-5mm\bfseries\thepage}{\bfseries\thepage}]%
      {\fancyplain{}{\sffamily\slshape\rightmark}}
\chead[]{}
\rhead[\fancyplain{}{\sffamily\slshape\leftmark}]%
      {\fancyplain{\begin{picture}(0,0)%
                     \put(0,0){\makebox[5truemm][r]{\bfseries\thepage}}%
                   \end{picture}}{\bfseries\thepage}}
\cfoot{}
\pagestyle{fancyplain}
\renewcommand{\chaptermark}[1]{\markboth{%
    \ifnum \c@secnumdepth >\m@ne
       \if@mainmatter
         \@chapapp\ \thechapter. \ %
       \fi
    \fi
    #1}{%
    \ifnum \c@secnumdepth >\m@ne
       \if@mainmatter
         \@chapapp\ \thechapter. \ %
       \fi
    \fi
    #1}}
\renewcommand{\sectionmark}[1]{\markright{%
    \ifnum \c@secnumdepth >\z@
       \thesection. \ %
    \fi
    #1}}
\renewcommand\frontmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
  \pagestyle{plain}
  \pagenumbering{roman}}
\renewcommand\mainmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmattertrue
  \pagestyle{fancyplain}
  \pagenumbering{arabic}}
\newcommand{\singlespacing}{\renewcommand{\baselinestretch}{1}}
\newcommand{\oneandhalfspacing}{\renewcommand{\baselinestretch}{1.24}}
\newcommand{\doublespacing}{\renewcommand{\baselinestretch}{1.66}}
\def\@startsection#1#2#3#4#5#6{%
     \if@noskipsec \leavevmode \fi
     \par \@tempskipa #4\relax
     \@afterindenttrue
     \ifdim \@tempskipa <\z@ \@tempskipa -\@tempskipa \@afterindentfalse\fi
     \if@nobreak \everypar{}\else
       \addpenalty\@secpenalty\addvspace\@tempskipa\fi
     \@ifstar{\@ssect{#3}{#4}{#5}{#6}}%
             {\AtBeginSection{#1}%
              \@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
\renewcommand\chapter{%
     \if@openright\cleardoublepage\else\clearpage\fi
     \thispagestyle{plain}%
     \AtBeginSection{chapter}%
     \global\@topnum\z@
     \@afterindentfalse
     \secdef\@chapter\@schapter}
\def\AtBeginSection#1{\relax}
\newcommand{\numberin}[2]{%
     \@addtoreset{#1}{#2}%
     \@xp\@xp\@xp\renewcommand\@xp{\csname the#1\endcsname}{%
                        \csname the#2\endcsname.\arabic{#1}}}
\endinput
%%
%% End of file `uwathes.cls'.
