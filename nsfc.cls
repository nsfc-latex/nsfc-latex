% https://nsfc-latex.github.io/
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsfc}[2025/01/01 NSFC proposal template]

\LoadClass[12pt, UTF8, AutoFakeBold=2.5, a4paper]{ctexart}

\RequirePackage[left=3.20cm,right=3.14cm,top=2.54cm,bottom=2.54cm]{geometry}

% colors
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}
\definecolor{nsfc-blue}{RGB}{0,112,192}
\definecolor{headercolor}{RGB}{0,0,0}
\definecolor{footercolor}{RGB}{0,0,0}

\newcommand{\highlt}[1]{\textbf{\textcolor[rgb]{0,0,0.25}{#1}}}

% underline
\RequirePackage{xeCJKfntef}
\newcommand{\udl}[1]{\CJKunderline*{#1}}

% indent the first paragraph
\usepackage{indentfirst}

\RequirePackage{graphicx, overpic}
\RequirePackage{amsfonts, amsmath, amssymb}
\usepackage{fontspec}
\usepackage{setspace}

\usepackage{titlesec} 
\usepackage{ragged2e}
\usepackage{pifont}
\usepackage{zhnumber}

\RequirePackage[
	colorlinks,
	urlcolor=nsfc-blue,
	linkcolor=black,
	anchorcolor=black,
	citecolor=black,
	CJKbookmarks=True
]{hyperref}

% ref
\usepackage{cleveref}
\crefname{equation}{公式}{公式}
\crefname{figure}{图}{图}
\crefname{table}{表}{表}

%%%————————————————————————————————字号
\newcommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}

% CJK
\RequirePackage{xeCJK}
\CJKsetecglue{\hskip 0.3em plus 0.05em minus 0.1em}
% set section title font to KaitTi
\setCJKfamilyfont{kaiti}[Path=./fonts/, Extension=.ttf, AutoFakeBold=3]{Kaiti}

% main document font: SimSun
\setCJKmainfont[Path=./fonts/, Extension=.ttf, AutoFakeBold=3]{SimSun}
\xeCJKsetup{PunctStyle=quanjiao}

% line spacing: 22/14.5
\renewcommand{\baselinestretch}{1.5172413793103448}

% line break
\XeTeXlinebreaklocale "zh"

\usepackage{caption}
\captionsetup[figure]{name={图},font={footnotesize,stretch=1.25},labelsep=period,labelfont=bf, singlelinecheck=off, justification=centering} 

% Define section font
\newcommand{\sectionzihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\subsectionzihao}{\fontsize{14pt}{14pt}\selectfont}
\newcommand{\subsubsectionzihao}{\fontsize{12pt}{20pt}\selectfont}

\setcounter{secnumdepth}{4}
%-------------------------------------------------
% section and subsection use KaiTi
%-------------------------------------------------
\titleformat
    {\section}
    {\color{nsfc-blue} \sectionzihao \CJKfamily{kaiti}}
    {\hspace{1.45em}（\zhnum{section}）}
    {0pt}
    {}
\titleformat
    {\subsection}
    {\color{nsfc-blue} \subsectionzihao \CJKfamily{kaiti} \linespread{1}}
    {}
    {0pt}
    {\hspace{2em}\arabic{subsection}.}

%-------------------------------------------------
% anything below subsection use SimSun
%-------------------------------------------------
\titleformat
    {\subsubsection}
    {\subsubsectionzihao\bfseries} % format
    {\hspace{17pt}  \textnormal{\arabic{subsection}.\arabic{subsubsection}}} % label
    {0.5em}
    {}

\titleclass{\subsubsubsection}{straight}[\subsubsection]
\newcounter{subsubsubsection}[subsubsection]
\renewcommand\thesubsubsubsection{\arabic{subsection}.\arabic{subsubsection}.\arabic{subsubsubsection}}
\titleformat
    {\subsubsubsection}[hang]
    {\bfseries}
    {\hspace{18pt}（\arabic{subsubsubsection}）\hspace{0.5em}}
    {0.5pt}
    {}

\newcommand{\NSFCsec}[2]{\section{\textbf{#1}#2}}
\newcommand{\NSFCsubsec}[2]{\subsection{\textbf{#1}~#2}}

% Define line stretch for section
\titlespacing*{\section}
    {0pt} % Left indentation
    {0pt plus 0pt minus 0pt} % Space before the title
    {0pt plus 0pt minus 0pt} % Space after the title

% Define line stretch for subsection
\titlespacing*{\subsection}
    {0pt} % Left indentation
    {0pt plus 0pt minus 0pt} % Space before the title
    {0pt plus 0pt minus 0pt} % Space after the title

% Define line stretch for subsubsection
\titlespacing*{\subsubsection}
    {0pt} % Left indentation
    {0pt plus 0pt minus 0pt} % Space before the title
    {0pt plus 0pt minus 0pt} % Space after the title

% Define line stretch for subsubsection
\titlespacing*{\subsubsubsection}
    {0pt} % Left indentation
    {0pt plus 0pt minus 0pt} % Space before the title
    {0pt plus 0pt minus 0pt} % Space after the title

\pagestyle{empty}

\AtBeginDocument{
    \begin{center}
        {\sanhao \CJKfamily{kaiti} \bfseries 报告正文}
    \end{center}

    {\sihao \CJKfamily{kaiti} 参照以下提纲撰写，要求内容翔实、清晰，层次分明，标题突出。{\color{nsfc-blue} \bfseries 请勿删除或改动下述提纲标题及括号中的文字。}}
}

\endinput
