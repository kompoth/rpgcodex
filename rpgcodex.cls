\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rpgcodex}[LaTeX class for RPG rulebooks]
\LoadClass[oneside,twocolumn]{book}

% Development packages
\RequirePackage{etoolbox}
\RequirePackage[abspath]{currfile}

% Encodings, locales
\RequirePackage[utf8]{inputenc}
\RequirePackage[T2A]{fontenc}

% Basic geometry 
\RequirePackage{geometry}
\geometry{
  a4paper,
  top=2cm, 
  bottom=2.5cm, 
  left=1.5cm, 
  right=1.5cm}
\setlength{\columnsep}{1cm}

% Indent setup
\RequirePackage{indentfirst}
\setlength{\parskip}{0.5\baselineskip}

% Colors
\RequirePackage[table]{xcolor}
\definecolor{maroon}{HTML}{800000}
\definecolor{geargrey}{HTML}{272525}
\definecolor{tablelight}{HTML}{ececea}
\definecolor{tabledark}{HTML}{d9e1dd}
\definecolor{parchment}{HTML}{e9cb97}

% Class flags
\newtoggle{bool-bg}
\DeclareOption{no-bg}{\togglefalse{bool-bg}}
\DeclareOption{bg}{\toggletrue{bool-bg}}
\DeclareOption*{\ClassWarning{rpgcodex}{Unknown option '\CurrentOption'}}
\ExecuteOptions{bg}
\ProcessOptions\relax

% Load modules of codex class
\RequirePackage{lib/codex-text}  % must be fitst to set main font
\RequirePackage{lib/codex-cover}
\RequirePackage{lib/codex-bg}
\RequirePackage{lib/codex-fancy}
\RequirePackage{lib/codex-art}
\RequirePackage{lib/codex-sections}
\RequirePackage{lib/codex-colorbox}
\RequirePackage{lib/codex-table}

% Custom date
\def\mydate{\leavevmode\hbox{\twodigits\day.\twodigits\month.\the\year}}
\def\twodigits#1{\ifnum#1<10 0\fi\the#1}

% Some measurements
\newlength{\lineheight}
\settoheight{\lineheight}{A}
% Entry
\newcommand{\CodexEntry}[1]{ 
  \noindent
  \begin{tabular}{ll}
    \raisebox{-.5\lineheight}{
      \includegraphics[height=2\lineheight]{lib/img/skull.png}
    } & #1\\
  \end{tabular}
  \par
}

% Links
\RequirePackage{hyperref}
\hypersetup{colorlinks=true, urlcolor=maroon, linkcolor=maroon}

\endinput
