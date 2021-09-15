%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                            %%
%% Class ``Default Document''                                                 %%
%%                                                                            %%
%% A default document for writing paper                                       %%
%%                                                                            %%
%% Version: v0.1.0                                                            %%
%% Modified date: 2021-04-12                                                  %%
%% Authors: Nhu-Tai Do                                                        %%
%% License: MIT License (c) 2021 Nhu-Tai Do                                   %%
%% GitHub Repo:                                                               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ************************** Class Identification ******************************
\newcommand\fileversion{0.1.0}
\newcommand\filedate{2021/04/12}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{default}[\filedate\space A default document for writing paper by Nhu-Tai Do (v\fileversion)]
\typeout{https://dntai.github.io/}

% ******************************************************************************
% **************************** Class Definition ********************************
% ******************************************************************************

% *************************** Pre-defined Options ******************************
% Font Size
\newcommand\default@fontsize{11pt} % Set default as 12pt
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

% Process options and load class
\ProcessOptions\relax
\LoadClass{article}%

% ******************************************************************************
% ******************************** Packages ************************************
% ******************************************************************************
\RequirePackage{import}
\RequirePackage{float} % Allows [H] in \begin{figure}
\RequirePackage{soul} % highlight with hl
\RequirePackage{color}
\RequirePackage{graphicx}
\RequirePackage{multirow} %Table Generator
\RequirePackage{xcolor} %Table Generator
\RequirePackage{tabularx}
\RequirePackage{adjustbox}

\RequirePackage{tikz}
\RequirePackage{calc}
\def\checkmark{\tikz\fill[scale=0.4](0,.35) -- (.25,0) -- (1,.7) -- (.25,.15) -- cycle;} 
\def\scalecheck{\resizebox{\widthof{\checkmark}*\ratio{\widthof{x}}{\widthof{\normalsize x}}}{!}{\checkmark}}

% proofreading
% \newcommand{\reviseA}[1]{\hlbox[cyan]{#1}}
% \newcommand{\reviseB}[1]{\hlbox[green]{#1}}
% \newcommand{\reviseC}[1]{\hlbox[yellow]{#1}}
\newcommand{\reviseD}[1]{\hlbox[green]{#1}}
\newcommand{\verify}[1]{\hlbox[cyan]{#1}}

\newcommand{\reviseA}[1]{#1}
\newcommand{\reviseB}[1]{#1}
\newcommand{\reviseC}[1]{#1}
% \newcommand{\verify}[1]{#1}
% \newcommand{\reviseD}[1]{#1}

%---------------------------------------------
% Equation Symbol
%---------------------------------------------
\RequirePackage{amsmath}
\RequirePackage{stackengine}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

% equal define in equation
% https://tex.stackexchange.com/questions/163829/delta-equal-to-symbol/163834
\def\delequal{\mathrel{\ensurestackMath{\stackon[1pt]{=}{\scriptstyle\Delta}}}}
%---------------------------------------------

%---------------------------------------------
% Information Definition
%---------------------------------------------
\def\@abstract{}
\renewcommand{\abstract}[1]{\gdef\@abstract{#1}}
\def\@keyword{}
\newcommand{\keyword}[1]{\gdef\@keyword{#1}}

%---------------------------------------------
% Layout
%---------------------------------------------

% Declare Title Page
\renewcommand\maketitle{ % Note the extra {
    {\raggedright 
    \begin{center}
        {\Huge \bfseries \sffamily \@title }\\[4ex] 
        {\Large  \@author}\\[2ex] 
        \@date\\[4ex]
    \end{center}}
    
    % Table of Contents
    \setcounter{tocdepth}{2}
    \tableofcontents
    
    \section*{Abstract}
    \addcontentsline{toc}{section}{(Abstract)}
    {\@abstract}\\[2ex]
    {\textbf{Keywords}: \@keyword}
} % Note the extra }

% Set Graphics path
\graphicspath{{./figures/}} 

% Set Margin
\RequirePackage{geometry}
\geometry{left=20mm, top=20mm, right=20mm, bottom=20mm}

% Set Paragraph Default
\setlength{\parindent}{2em} % indentation at the first line of a paragraph
\setlength{\parskip}{0em}   % paragraph spacing
% \renewcommand{\baselinestretch}{1.0}   % line spacing
% \setlength{\baselineskip}{30pt}
\linespread{1} % 1.0: single spacing; 1.3: one-and-a-half spacing; 1.6: double spacing
