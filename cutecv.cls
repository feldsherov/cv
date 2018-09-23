\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cutecv} % [2018/09 feldsherov cute cv class]

% Use article class as the base class.
\LoadClass{article}
% Use helvetica fontfamily
% \RequirePackage{helvet}
\RequirePackage{fontspec}
\setmainfont[
   ItalicFont     = HelveticaNeue-Italic,
   BoldFont       = HelveticaNeue-Bold,
   BoldItalicFont = HelveticaNeue-BoldItalic]{HelveticaNeue}
\newfontfamily\HLight[
   ItalicFont     = HelveticaNeue-LightItalic,
   BoldFont       = HelveticaNeue-UltraLight,
   BoldItalicFont = HelveticaNeue-UltraLightItalic]{HelveticaNeue-Light}

% Horisontal aligment package
\RequirePackage{ragged2e}


\RequirePackage{paracol}

% Geometry package for page margins.
\RequirePackage[
left=10mm,
right=10mm,
top=10mm,
bottom=10mm,
nohead,
includefoot]{geometry}

% Geometry paper
\geometry{a4paper}

% Turn off page numbers
\pagenumbering{gobble}

\RequirePackage{libertine}

% \newcommand{\headlinecolor}{\normalcolor}
% \RequirePackage{xcolor}
% \definecolor{slcolor}{HTML}{882B21}


\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Contacts variable
\newcommand\contacts[1]{\def\@contacts{#1}}

\renewcommand{\maketitle}{%
  \centering {\fontsize{30}{40}\selectfont\@author} \\
  \centering {\HLight\fontsize{12}{14}\selectfont \@contacts} \\
  \hrulefill
  \medskip
}


\newenvironment{cvsection}[1] {
  \begin{flushleft}
  {\HLight\fontsize{15}{25}\selectfont
    \textbf{\addfontfeature{LetterSpace=7.0}{#1}}\\ }
  \vspace{2mm}
}
{\end{flushleft}}

\newcommand{\cvinfobox}[3]{
  #1 \\
  \if #2\empty \else
    {\HLight #2 \\}
  \fi
  \if #3\empty \else
  {\HLight\selectfont\textbf{\addfontfeature{LetterSpace=7.0}#3} \\}
  \fi
  \vspace{2mm}
}

