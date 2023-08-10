\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{centralelille}[2014/08/16 Example LaTeX class]
\LoadClass[10pt,a4paper, hidelinks]{report}
\newcommand{\headlinecolor}{\normalcolor}

\input{vars.tex}
% ------ PACKAGES ------

% Document Layout Formating
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage{setspace}
\RequirePackage{background}
\RequirePackage{lipsum}
\RequirePackage{lmodern}
\RequirePackage{fancyhdr}
\RequirePackage[acronym]{glossaries}

% Style
\RequirePackage{xcolor}
\RequirePackage{titlesec}
\RequirePackage{tcolorbox}

% Figures and specific environments
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{epigraph}
\RequirePackage{wrapfig}

% Other tools
\RequirePackage{url}
\RequirePackage{hyperref}
\RequirePackage{etoolbox}
\RequirePackage{array}
\RequirePackage{sectsty}

% Tikz Libraries
\usetikzlibrary{fadings}
\usetikzlibrary{shapes.geometric}

% ------ DEFINE COLORS ------
\definecolor{mainColor}{HTML}{376795}
\definecolor{secondaryColor}{HTML}{F9B000}
\definecolor{lightMainColor}{HTML}{376795}
\definecolor{lightSecondaryColor}{HTML}{F9B000}

\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\setcounter{secnumdepth}{0}

% ------ DEFINE STYLES ------
\setlength{\parindent}{0pt}
\subsectionfont{\color{mainColor}}
\subsubsectionfont{\color{secondaryColor}}
\backgroundsetup{contents=\documentStatus,color=red!30}
\onehalfspacing
\usepackage[Bjornstrup]{fncychap}

\fancypagestyle{fancy}{%
    \fancyhead[L]{\textsc{\jobTitle{}}}
    \fancyfoot[L]{\textsc{\@author}}
    \fancyfoot[C]{\thepage}
    \fancyfoot[R]{\textsc{\jobType{} - \company{}}}
    \renewcommand{\footrulewidth}{0.4pt}
}
\pagestyle{fancy}


\renewcommand{\maketitle}{%
    \thispagestyle{plain}
    \backgroundsetup{contents=,color=red!30}
    \pagecolor{mainColor}

    \begin{tikzpicture}[remember picture,overlay]
        \node[regular polygon, draw, regular polygon sides = 12, scale=60, line width=40pt, color=white, rotate=15, opacity=0.1] (p) at (-1,-1) {};
        \node[regular polygon, draw, regular polygon sides = 12, scale=40, line width=15pt, color=white, rotate=25, opacity=0.1] (p) at (current page.south east) {};
    \end{tikzpicture}

    \begin{center}
        \color{red!50!white}
        \textbf{\Huge{STATUT - \documentStatus}}
    \end{center}

    \vfill

    \color{white}
    \begin{center}
        \includegraphics[height=7cm]{images/logo_ecole.png} \\
        \vspace{1cm}
        \rule{\linewidth}{0.5mm} \\[0.4cm]
        {
            \Huge{
                \textsc{\textcolor{secondaryColor}{Rapport de \jobType{}}}\\
            }
            \vspace{0.5cm}
            \textsc{
                \huge \textbf{\company{} - \jobTitle{}}\\
                \vspace{0.5cm}
                \Large \tasks{}
            }\\[0.4cm] }
        \rule{\linewidth}{0.5mm} \\[1.5cm]
    \end{center}

    \vfill
    \begin{tabular}{p{8cm}p{8cm}}
        \textbf{Auteur :}
        \begin{itemize}
            \item \textsc{\firstAuthorName{}} - \textit{\firstAuthorTitle{}}\newline
                \textit{(\firstAuthorJobTitle{})}
            \item \textsc{\secondAuthorName{}} - \textit{\secondAuthorTitle{}}\newline
                \textit{(\secondAuthorJobTitle{})}
        \end{itemize}
        
        &
        
        \textbf{Tuteurs :}
        \begin{itemize}
            \item
        \end{itemize}
        \end{tabular}
    \vfill
    \newpage
    \color{black}
    \pagecolor{white}
    \pagestyle{fancy}
    \backgroundsetup{contents=\documentStatus,color=red!30}
}











