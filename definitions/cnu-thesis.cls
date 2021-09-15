%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                            %%
%% Class ``Chonnam National University Thesis Document Template''             %%
%%                                                                            %%
%% A default document for writing paper                                       %%
%%                                                                            %%
%% Version: v0.1.0                                                            %%
%% Modified date: 2021-05-12                                                  %%
%% Authors: Nhu-Tai Do                                                        %%
%% License: MIT License (c) 2021 Nhu-Tai Do                                   %%
%% GitHub Repo:                                                               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ************************** Class Identification ******************************
\newcommand\fileversion{0.1.0}
\newcommand\filedate{2021/05/12}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cnu-thesis}[\filedate\space A default document for thesis template of Chonnam National University, Gwangju, South Korea (v\fileversion)]
\typeout{https://dntai.github.io/}

% ******************************************************************************
% **************************** Class Definition ********************************
% ******************************************************************************

% *************************** Pre-defined Options ******************************
% Font Size
\newcommand\default@fontsize{11pt} % Set default as 11pt
\DeclareOption{11pt}{\renewcommand\default@fontsize{11pt}}
\DeclareOption{12pt}{\renewcommand\default@fontsize{12pt}}
\PassOptionsToClass{\default@fontsize}{article}%

% Page Size
\newcommand\default@papersize{a4paper} % Set default as a4paper
\DeclareOption{a4paper}{\renewcommand\default@papersize{a4paper}}
\DeclareOption{a5paper}{\renewcommand\default@papersize{a5paper}}
\PassOptionsToClass{\default@papersize}{article}%

% Column layout
\PassOptionsToClass{oneside}{article}%

% \DeclareOption*{
%   \PassOptionsToPackage{\CurrentOption}{color}
%   \PassOptionsToPackage{\CurrentOption}{xcolor}
%   \PassOptionsToPackage{\CurrentOption}{multirow}
% }

% Process options and load class
\ProcessOptions\relax
\LoadClass{article}%

% ******************************************************************************
% ******************************** Packages ************************************
% ******************************************************************************
% \AtBeginDocument{
%     % \RequirePackage[table,xcdraw]{xcolor}
% }
% \RequirePackage{import}
% \RequirePackage{float} % Allows [H] in \begin{figure}
% \RequirePackage{soul} % highlight with hl
% \RequirePackage{graphicx}
% \RequirePackage{tabularx}
% \RequirePackage{adjustbox}

% \RequirePackage{tikz}
% \RequirePackage{calc}
% \def\checkmark{\tikz\fill[scale=0.4](0,.35) -- (.25,0) -- (1,.7) -- (.25,.15) -- cycle;} 
% \def\scalecheck{\resizebox{\widthof{\checkmark}*\ratio{\widthof{x}}{\widthof{\normalsize x}}}{!}{\checkmark}}


%---------------------------------------------
% Equation Symbol
%---------------------------------------------
% \RequirePackage{amsmath}
% \RequirePackage{stackengine}
% \DeclareMathOperator*{\argmax}{arg\,max}
% \DeclareMathOperator*{\argmin}{arg\,min}

% % equal define in equation
% % https://tex.stackexchange.com/questions/163829/delta-equal-to-symbol/163834
% \def\delequal{\mathrel{\ensurestackMath{\stackon[1pt]{=}{\scriptstyle\Delta}}}}
%---------------------------------------------

% ***************************************************
% Definition Information
% ***************************************************
\RequirePackage{blindtext}
\RequirePackage[english]{babel}
\RequirePackage{lipsum}


% Author
\def\@author{Author Name}
\renewcommand{\author}[1]{\gdef\@author{#1}}
\def\@authorkr{Korean Author Name}
\newcommand{\authorkr}[1]{\gdef\@authorkr{#1}}

% Title
\def\@title{Title}
\renewcommand{\title}[1]{\gdef\@title{#1}}
\def\@titlekr{Korean Title}
\newcommand{\titlekr}[1]{\gdef\@titlekr{#1}}

% Abstract + Keywords
\def\@abstract{Abstract here ... \blindtext[1]}
\renewcommand{\abstract}[1]{\gdef\@abstract{#1}}
\def\@keyword{Keywords here ... \lipsum[3]}
\newcommand{\keyword}[1]{\gdef\@keyword{#1}}
\def\@abstractkr{Korean abstract here ... \blindtext[1]}
\newcommand{\abstractkr}[1]{\gdef\@abstractkr{#1}}
\def\@keywordkr{Korean keywords here ... \lipsum[3]}
\newcommand{\keywordkr}[1]{\gdef\@keywordkr{#1}}

% Acknowledgement
\def\@acknowledgement{Acknowledgement here ... \blindtext[1]}
\newcommand{\acknowledgement}[1]{\gdef\@acknowledgement{#1}}

% Datetime
\def\@graduateMonth{August}
\newcommand{\graduateMonth}[1]{\gdef\@graduateMonth{#1}}
\def\@graduateYear{2021}
\newcommand{\graduateYear}[1]{\gdef\@graduateYear{#1}}

% Degree: Name, Major
\def\@degreeAward{Doctoral Dissertation}
\newcommand{\degreeAward}[1]{\gdef\@degreeAward{#1}}
\def\@degreeName{Doctor of Engineering}
\newcommand{\degreeName}[1]{\gdef\@degreeName{#1}}
\def\@degreeMajor{Artificial Intelligence Convergence}
\newcommand{\degreeMajor}[1]{\gdef\@degreeMajor{#1}}

% Department + School + University
\def\@department{Department of Artificial Intelligence Convergence}
\newcommand{\department}[1]{\gdef\@department{#1}}
\def\@school{Graduate School}
\newcommand{\school}[1]{\gdef\@school{#1}}
\def\@university{Chonnam National University}
\newcommand{\university}[1]{\gdef\@university{#1}}

% Department + School + University (Korean)
\def\@departmentkr{인공 지능 융합학과}
\newcommand{\departmentkr}[1]{\gdef\@departmentkr{#1}}
\def\@schoolkr{대학원}
\newcommand{\schoolkr}[1]{\gdef\@schoolkr{#1}}
\def\@universitykr{전남대학교}
\newcommand{\universitykr}[1]{\gdef\@universitykr{#1}}

% Advisor
\def\@advisorName{KIM, Yong-A}
\newcommand{\advisorName}[1]{\gdef\@advisorName{#1}}
\def\@advisorNameKr{김용아}
\newcommand{\advisorNameKr}[1]{\gdef\@advisorNameKr{#1}}
\def\@advisorTitle{Professor}
\newcommand{\advisorTitle}[1]{\gdef\@advisorTitle{#1}}
\def\@advisorTitleKr{교수}
\newcommand{\advisorTitleKr}[1]{\gdef\@advisorTitleKr{#1}}

% Committees
\def\@committeeChair{KIM, Yong-A}
\newcommand{\committeeChair}[1]{\gdef\@committeeChair{#1}}
\def\@committeeChairKr{김용아}
\newcommand{\committeeChairKr}[1]{\gdef\@committeeChairKr{#1}}
\def\@committeeChairTitle{Professor}
\newcommand{\committeeChairTitle}[1]{\gdef\@committeeChairTitle{#1}}
\def\@committeeChairTitleKr{교수}
\newcommand{\committeeChairTitleKr}[1]{\gdef\@committeeChairTitleKr{#1}}

\def\@committeeMemberI{KIM, Yong-A}
\newcommand{\committeeMemberI}[1]{\gdef\@committeeMemberI{#1}}
\def\@committeeMemberIKr{김용아}
\newcommand{\committeeMemberIKr}[1]{\gdef\@committeeMemberIKr{#1}}
\def\@committeeMemberITitle{Professor}
\newcommand{\committeeMemberITitle}[1]{\gdef\@committeeMemberITitle{#1}}
\def\@committeeMemberITitleKr{교수}
\newcommand{\committeeMemberITitleKr}[1]{\gdef\@committeeMemberITitleKr{#1}}

\def\@committeeMemberII{KIM, Yong-A}
\newcommand{\committeeMemberII}[1]{\gdef\@committeeMemberII{#1}}
\def\@committeeMemberIIKr{김용아}
\newcommand{\committeeMemberIIKr}[1]{\gdef\@committeeMemberIIKr{#1}}
\def\@committeeMemberIITitle{Professor}
\newcommand{\committeeMemberIITitle}[1]{\gdef\@committeeMemberIITitle{#1}}
\def\@committeeMemberIITitleKr{교수}
\newcommand{\committeeMemberIITitleKr}[1]{\gdef\@committeeMemberIITitleKr{#1}}

\def\@committeeMemberIII{KIM, Yong-A}
\newcommand{\committeeMemberIII}[1]{\gdef\@committeeMemberIII{#1}}
\def\@committeeMemberIIIKr{김용아}
\newcommand{\committeeMemberIIIKr}[1]{\gdef\@committeeMemberIIIKr{#1}}
\def\@committeeMemberIIITitle{Professor}
\newcommand{\committeeMemberIIITitle}[1]{\gdef\@committeeMemberIIITitle{#1}}
\def\@committeeMemberIIITitleKr{교수}
\newcommand{\committeeMemberIIITitleKr}[1]{\gdef\@committeeMemberIIITitleKr{#1}}

\def\@committeeAdvisor{\@advisorName}
\newcommand{\committeeAdvisor}[1]{\gdef\@committeeAdvisor{#1}}
\def\@committeeAdvisorKr{\@advisorNameKr}
\newcommand{\committeeAdvisorKr}[1]{\gdef\@committeeAdvisorKr{#1}}
\def\@committeeAdvisorTitle{Professor}
\newcommand{\committeeAdvisorTitle}[1]{\gdef\@committeeAdvisorTitle{#1}}
\def\@committeeAdvisorTitleKr{교수}
\newcommand{\committeeAdvisorTitleKr}[1]{\gdef\@committeeAdvisorTitleKr{#1}}


% ***************************************************
% Setup Document Section
% ***************************************************


% Set Default Paper Layout (Body Part)
% \RequirePackage[\default@papersize, top=35mm, bottom=25mm, left=35mm, right=30mm, headheight=0cm, headsep=0mm, footskip=10mm, showframe]{geometry}
\RequirePackage[\default@papersize, top=35mm, bottom=40mm, left=35mm, right=30mm, headheight=0cm, headsep=0mm, footskip=15mm]{geometry}

% Pape Style
% \def\ps@cnu{%
%      \let\@oddhead\@empty
%      \let\@evenhead\@empty
%      \def\@oddfoot{\centerline{\fontbatang\fontsize{9}{11.1}\selectfont \thepage}}
%      \def\@evenfoot{\centerline{\fontbatang\fontsize{9}{11.1}\selectfont \thepage}}
% }
% \pagestyle{cnu}

% The \addtocontents command adds text (or formatting commands) directly to the file that generates the table of contents or list of figures or tables.
% \AtBeginDocument{\addtocontents{toc}{\protect\thispagestyle{cnu}}}
% \AtBeginDocument{\addtocontents{lof}{\protect\thispagestyle{cnu}}}
% \AtBeginDocument{\addtocontents{lot}{\protect\thispagestyle{cnu}}}

% ****************** Format Section ******************
\RequirePackage{titlesec}

% \renewcommand{\thesection}{\arabic{section}}
% \renewcommand{\thesubsection}{\arabic{section}.\Alph{subsection}}
% \renewcommand{\thesubsection}{\Alph{subsection}}
% \renewcommand{\thesubsubsection}{\arabic{section}.\Alph{subsection}.\arabic{subsubsection}}

\titlespacing{\section}{0pt}{0pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}[0pt]
\titlespacing{\subsection}{0pt}{0pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}[0pt]
\titlespacing{\subsubsection}{0pt}{0pt plus 0pt minus 0pt}{0pt plus 0pt minus 0pt}[0pt]

% \titleformat{hcommandi}[hshapei]{hformati}{hlabeli}{hsepi}{hbefore-codei}[hafter-codei]
% [\vspace{.5ex}\titlerule] --> verticle line
% \titlespacing*{hcommandi}{hlefti}{hbefore-sepi}{hafter-sepi}[hright-sepi]

\titleformat{\section}{\normalfont\large\bfseries}{\thesection.}{1em}{\MakeUppercase}
\titleformat{\subsection}{\normalfont\large\bfseries}{\thesubsection.}{1em}{}
\titleformat{\subsubsection}{\normalfont\large\bfseries}{\thesubsubsection.}{1em}{}

\titlespacing*{\section}{0pt}{0pt}{0pt}[0pt] 
\titlespacing*{\subsection}{0pt}{0pt}{0pt}[0pt]
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}[0pt]

% List Indent and Item
\RequirePackage{enumitem}
\newlength\docparskip
\setlength{\docparskip}{\parskip}
\setlist[itemize]{align=parleft, left=\parindent..2\parindent}
\setlist{nosep, itemsep=1em, parsep=0pt, before={\parskip=1em}, after=\vspace{-\docparskip}}%

% ****************** ClearPage After Secion ******************
\def\@sectionbreakdefault{\clearpage}
\newcommand{\sectionbreak}{\clearpage}

% ****************** Paragraph & Text with Spacing, Indent ******************
\RequirePackage{indentfirst}
\@afterindentfalse

\setlength{\parindent}{2em}
\setlength{\parskip}{1em}
% \renewcommand{\baselinestretch}{2.0}
% \linespread{1.6}
\renewcommand{\baselinestretch}{2.4}
% \renewcommand{\linespread}{2}
% \linespread{2.0}

% ****************** Spacing in Equation, Tables ******************
\RequirePackage{setspace}
\RequirePackage{etoolbox}
\newcommand{\zerodisplayskips}{%
  \setlength{\abovedisplayskip}{-10pt}%
  \setlength{\belowdisplayskip}{6pt}%
  \setlength{\abovedisplayshortskip}{-6pt}%
  \setlength{\belowdisplayshortskip}{6pt}
}
\newcommand{\zerodisplayskipsItemSize}{%
  \setlength{\abovedisplayskip}{-20pt}%
  \setlength{\belowdisplayskip}{6pt}%
  \setlength{\abovedisplayshortskip}{-12pt}%
  \setlength{\belowdisplayshortskip}{6pt}
}
\BeforeBeginEnvironment{equation}{\zerodisplayskips}
\BeforeBeginEnvironment{align}{\zerodisplayskips}

\RequirePackage{caption} 
\captionsetup[table]{skip=6pt}

% \BeforeBeginEnvironment{equation}{\begin{singlespace}}
% \AfterEndEnvironment{equation}{\end{singlespace}\noindent\ignorespaces}
% \BeforeBeginEnvironment{align}{\begin{singlespace}}
% \AfterEndEnvironment{align}{\end{singlespace}\noindent\ignorespaces}
% \appto{\normalsize}{\zerodisplayskips}
% \appto{\small}{\zerodisplayskips}
% \appto{\footnotesize}{\zerodisplayskips}

% Set Paragraph Default
% \setlength{\parindent}{2em} % indentation at the first line of a paragraph
% \setlength{\parskip}{0em}   % paragraph spacing
% \renewcommand{\baselinestretch}{1.0}   % line spacing
% \setlength{\baselineskip}{30pt}
\linespread{1.6} % 1.0: single spacing; 1.3: one-and-a-half spacing; 1.6: double spacing

% ****************** References ******************
% \RequirePackage{biblatex}
\RequirePackage[sorting=none, style=numeric, url=false, doi = true, isbn = true, backend=biber, ]{biblatex}

% ****************** Fonts and Styles ******************
\RequirePackage{caption}
\captionsetup[figure]{font=small}
\captionsetup[table]{font=small}

\RequirePackage{fontspec}
\newcommand\fontpath{definitions/}

% \setmainfont[Path=\fontpath]{batang.ttf}
% \setsansfont[Path=\fontpath]{hymjre.ttf}

%\newfontfamily\fonthymjre[Path=\fontpath]{hymjre.ttf}
%\newfontfamily\fontbatang[Path=\fontpath]{batang.ttf}
\newfontfamily\fontcourier{Courier New}

\newcommand\fontbatang{}
\newfontfamily\fonthymjre{Latin Modern Roman}
% \newcommand\fonthymjre{}
% \newfontfamily\fonthymjre[Path=\fontpath]{hymjre.ttf}

% ***************************************************
% Setup Layout Section
% ***************************************************
\RequirePackage{setspace} 
\RequirePackage{fontspec}
\RequirePackage[table,xcdraw]{xcolor}
\RequirePackage{changepage}
% Table of Contents (contentsname)
\RequirePackage{tocloft} % Custom TOC: cfttoctitlefont, cftaftertoctitle
%\makeatletter
% \patchcmd{\l@section}
%   {\cftsecfont #1}%   search pattern
%   {\cftsecfont {#1}}% replace by
%   {}%                  success
%   {}%                  failure
% \makeatother
% \renewcommand\cftsecfont{\MakeUppercase}

% Hyperlink
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true, %set true if you want colored links
    linktoc=all,     %set to all if you want both sections and subsections linked
    linkcolor=blue,  %choose some color if you want links to stand out
    citecolor=blue,
    urlcolor=blue,
}

\makeatletter
\def\@cite#1#2{[\textbf{#1\if@tempswa , #2\fi}]}
\def\@biblabel#1{[\textbf{#1}]}
\makeatother

% ****************** Cover Page 1 ******************
\makeatletter
\newcommand\makecoverI{ 
    \thispagestyle{empty}
    \newgeometry{top=45mm,bottom=40mm,left=35mm,right=30mm}
    \begin{center}\begin{singlespace}
        {\fontbatang\fontsize{14}{17}\selectfont \@degreeAward}\\[1.5cm]
        \begin{onehalfspacing}
            {
            \fonthymjre\fontsize{24}{31.2}\selectfont \bfseries \@title\par}\vspace{3cm}
            % \fonthymjre\fontsize{26}{31.2}\selectfont \bfseries \@title\par}\vspace{3cm}            
        \end{onehalfspacing}
        {\fontbatang\fontsize{16}{19.2}\selectfont \@department}\\[0.5cm]
        {\fontbatang\fontsize{16}{19.2}\selectfont \@school, \@university}\\[1.5cm]
        {\fontbatang\fontsize{16}{19.2}\selectfont \@author}\\\vfill
        {\fontbatang\fontsize{16}{19.2}\selectfont \@graduateMonth~\@graduateYear}\\
    \end{singlespace}\end{center}
    \restoregeometry
    \clearpage
} 

% ****************** Cover Page 2 ******************
\newcommand\makecoverII{ % Note the extra {
    \thispagestyle{empty}
    \newgeometry{top=40mm, bottom=40mm,left=35mm,right=30mm}
    \begin{center}\begin{singlespace}
        \begin{onehalfspacing}
            {\fonthymjre\fontsize{24}{31.2}\selectfont \bfseries \@title\par}\vspace{2cm}
            % \fonthymjre\fontsize{24}{31.2}\selectfont \bfseries \@title\par}\vspace{2cm}
        \end{onehalfspacing}
        {\fontbatang\fontsize{16}{19.2}\selectfont \@department}\\[0.5cm]
        {\fontbatang\fontsize{16}{19.2}\selectfont  \@school\text{, }\@university}\\[1.5cm]
        {\fontbatang\fontsize{16}{19.2}\selectfont \@author}\\[1cm]
        {\fontbatang\fontsize{14}{17}\selectfont Supervised~by~\@advisorTitle~\@advisorName}\\[2cm]

        
        {\raggedright
            \begin{singlespace}
                {\fontbatang\fontsize{12}{16}\selectfont A dissertation submitted in partial fulfillment of the requirements for the~\@degreeName~in~\@degreeMajor.}\\[1cm]
            \end{singlespace}
            {\fontbatang\hspace{1cm}\fontsize{14}{17}\selectfont Committee in Charge:}\\[0.5cm]
        }
        
        \begin{flushleft}\begin{adjustwidth}{5em}{}
            \begin{tabular}{l l}
                \hspace{1cm}\fontbatang\fontsize{12}{16}\selectfont \@committeeChair\hspace{0.5cm} & \rule{5cm}{0.15mm}\\[0.5cm]  
                
                \hspace{1cm}\fontbatang\fontsize{12}{16}\selectfont \@committeeMemberI\hspace{0.5cm} & \rule{5cm}{0.15mm}\\[0.5cm]
                \hspace{1cm}\fontbatang\fontsize{12}{16}\selectfont \@committeeMemberII\hspace{0.5cm} & \rule{5cm}{0.15mm}\\[0.5cm]
                \hspace{1cm}\fontbatang\fontsize{12}{16}\selectfont \@committeeMemberIII\hspace{0.5cm} & \rule{5cm}{0.15mm}\\[0.5cm]
                
                \hspace{1cm}\fontbatang\fontsize{12}{16}\selectfont \@committeeAdvisor\hspace{0.5cm} & \rule{5cm}{0.15mm}\\
            \end{tabular}
        \end{adjustwidth}\end{flushleft}
        \vfill
        {\fontbatang\fontsize{16}{19.2}\selectfont\@graduateMonth~\@graduateYear}
    \end{singlespace}\end{center}
    \restoregeometry
    \clearpage
}

% ****************** Index Page ******************
% Table of Contents, List of Figures and Tables, ...
\newcommand\makeindexpage { 
    % \doublespacing
    % \setstretch{2}
    \linespread{2}

    % \renewcommand\cftsecfont{\LARGE} section font of TOC
    % Table of Contents
    
    \renewcommand{\contentsname}{Table of Contents}
    % \addcontentsline{toc}{section}{\MakeUppercase{\contentsname}}
    % \renewcommand\cfttoctitlefont{\hfill\Huge\bfseries}
    % \renewcommand\cfttoctitlefont{\hfill\fontsize{16}{19.2}\selectfont\bfseries}
    \renewcommand\cfttoctitlefont{\fontsize{16}{19.2}\selectfont\bfseries}
    \renewcommand\cftaftertoctitle{\hfill\mbox{}}
    % \setcounter{tocdepth}{2}

    \tableofcontents
    \clearpage
    
    % List of Figures
    \renewcommand\listfigurename{List of Figures}
    % \addcontentsline{toc}{section}{\listfigurename}
    %\renewcommand\cftloftitlefont{\hfill\Large\bfseries}
    % \renewcommand\cftloftitlefont{\hfill\fontsize{16}{19.2}\selectfont\bfseries}
    \renewcommand\cftloftitlefont{\fontsize{16}{19.2}\selectfont\bfseries}
    \renewcommand\cftafterloftitle{\hfill\mbox{}}
    \listoffigures
    \clearpage
    
    % List of Tables
    \renewcommand{\listtablename}{List of Tables}
    % \addcontentsline{toc}{section}{\listtablename}
    % \renewcommand\cftlottitlefont{\hfill\Large\bfseries}
    % \renewcommand\cftlottitlefont{\hfill\fontsize{16}{19.2}\selectfont\bfseries}
    \renewcommand\cftlottitlefont{\fontsize{16}{19.2}\selectfont\bfseries}
    \renewcommand\cftafterlottitle{\hfill\mbox{}}
    \listoftables
    \clearpage
}

% ****************** Abstract Page (English + Korean) ******************
\newcommand{\makeabstract}{
    \renewcommand{\sectionbreak}{}
    \newgeometry{top=35mm,bottom=40mm,left=35mm,right=30mm}
    \begin{center}
        \begin{onehalfspacing}
            {\fonthymjre\fontsize{16}{19.2}\selectfont \bfseries \@title\par}\vspace{1.5cm}
        \end{onehalfspacing}
        \begin{doublespacing}
            {\fontbatang\fontsize{16}{19.2}\selectfont \@author}\\[1cm]
            {\fontbatang\fontsize{11}{13.4}\selectfont 
                \@department \\ 
                \@school\text{, }\@university \\
                (Supervised~by~\@advisorTitle~\@advisorName)
            }\\[1.5cm]
        \end{doublespacing}
    \end{center}
    
    \subsection*{(Abstract)}
    \addcontentsline{toc}{section}{(ABSTRACT)}
    {\fontbatang\fontsize{11}{13.4}\selectfont \@abstract}
    
    \restoregeometry
    \clearpage
    \renewcommand{\sectionbreak}{\@sectionbreakdefault}
}

\newcommand{\makeabstractkr}{
    \renewcommand{\sectionbreak}{}
    \newgeometry{top=35mm,bottom=40mm,left=35mm,right=30mm}
    \begin{center}
        \begin{onehalfspacing}
            {\fontsize{16}{19.2}\selectfont \bfseries \@titlekr\par}\vspace{1.5cm}
        \end{onehalfspacing}
        \begin{doublespacing}
            {\fontbatang\fontsize{16}{19.2}\selectfont \@authorkr}\\[1cm]
            {\fontbatang\fontsize{11}{13.4}\selectfont 
                \@universitykr~\@schoolkr~\@departmentkr \\ 
                (지도교수: ~\@advisorNameKr)
            }\\[1.5cm]
        \end{doublespacing}
    \end{center}

    \subsection*{(국문초록)}
    \addcontentsline{toc}{section}{(국문초록)}
    {\fontbatang\fontsize{11}{13.4}\selectfont \@abstractkr}
    
    \restoregeometry
    \clearpage
    \renewcommand{\sectionbreak}{\@sectionbreakdefault}
}

\newcommand{\makeacknowledgement}{
    \section*{Acknowledgement}
    \addcontentsline{toc}{section}{ACKNOWLEDGEMENT}
    {\@acknowledgement}\\[2ex]
}

% ****************** Cover for Normal View ******************
\newcommand\makecovernormal{ % Note the extra {
    {\raggedright 
        \begin{center}
            {\Huge \bfseries \sffamily \@title }\\[4ex] 
            {\Large  \@author}\\[2ex] 
            \@date\\[4ex]
        \end{center}
    }
    
    % Table of Contents
    \setcounter{tocdepth}{2}
    \renewcommand{\contentsname}{Whatever}
    \tableofcontents
    
    \section*{Abstract}
    \addcontentsline{toc}{section}{(Abstract)}
    {\@abstract}\\[2ex]
    {\textbf{Keywords}: \@keyword}
} % Note the extra }

\makeatother
% ***************************************************

% ***************************************************
% Make Layout Section
% ***************************************************

% ****************** Make of Title ******************
\renewcommand\maketitle{
    % cover I, II
    \makecoverI
    \makecoverII
    
    % Table of Contents, List of Figures, List of Tables
    \pagenumbering{roman}
    \makeindexpage
    
    % English Abstract
    \makeabstract
    \pagenumbering{arabic}
}

\AtEndDocument{
    % Korean Abstract
    \makeabstractkr
    
    % Acknowledgement
    \makeacknowledgement
}
% ***************************************************
