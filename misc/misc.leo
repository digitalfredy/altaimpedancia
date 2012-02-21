<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo (http://webpages.charter.net/edreamleo/front.html) -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://www.leo-editor.org/2011/leo" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="jegc.20111108184529.1135"><vh>@settings</vh>
<v t="jegc.20111108184529.1138"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="jegc.20111102130010.1112" a="E"><vh>Conferencias</vh>
<v t="jegc.20111108184529.1132" a="E"><vh>Botones</vh>
<v t="jegc.20111108184529.1133"><vh>@button PDF</vh></v>
</v>
<v t="jegc.20111108184529.1130" a="E"><vh>@path /home/jegc/Documentos/AltaImpedancia/svn/altaimpedancia/trunk/misc/</vh>
<v t="jegc.20111102130010.1127" a="E"><vh>Encabezado</vh>
<v t="jegc.20111102130010.4882"><vh>&lt;&lt;documentclass&gt;&gt;</vh></v>
<v t="jegc.20111102130010.4885"><vh>&lt;&lt;Tema&gt;&gt;</vh></v>
</v>
<v t="jegc.20111102130010.1120" a="E"><vh>Open Source Hardware</vh>
<v t="jegc.20111102130010.1114" a="E"><vh>@read-file-into-node conferencias/OSH/FLISoL2010Buga/OpenSourceHardware.tex</vh>
<v t="jegc.20111102130010.4882"></v>
<v t="jegc.20111102130010.4885"></v>
</v>
</v>
<v t="jegc.20111102130010.1121" a="E"><vh>Simulación de circuitos</vh>
<v t="jegc.20111102130010.1119"><vh>@read-file-into-node conferencias/SIM/UAC2011/sim.tex</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="jegc.20111102130010.1112"></t>
<t tx="jegc.20111102130010.1114">@language latex

&lt;&lt;documentclass&gt;&gt;

&lt;&lt;Tema&gt;&gt;

\usepackage[utf8]{inputenc}
\usepackage[spanish]{babel}
\usepackage{graphicx}
\usepackage{url}
\usepackage{times}
\usepackage[T1]{fontenc}
% \usepackage{xmpincl}
% \includexmp{metadata}
\usepackage{hyperref}
\hypersetup{pdfkeywords=open free design source hardware colombia Software Libre abierto FLISoL Buga 2010 AltaImpedancia alta impedancia electrónica}


\title[Open Source Hardware]{Extendiendo el modelo del software libre al hardware}
\subtitle{Open Source Hardware}

\author[]{Jorge~Ernesto~Guevara~Cuenca \and Fredy~J.~Pulido~López}

\institute[\url{http://www.altaimpedancia.org}]
{ \inst{1}
  Colibri - Comunidad de Usuarios de Software Libre en Colombia\\
  \url{http://www.slcolombia.org}
  \and
  \inst{2}
  AltaImpedancia\\
  \url{http://www.altaimpedancia.org}
}

\date[FLISoL 2010 Buga]
{FLISoL 2010 Buga\\Universidad del Valle sede Buga\\24 de abril de 2010}

\subject{Open Source Hardware y Sofware Libre}

\logo{\includegraphics[height=1cm]{img/altaimpedancia}}

\AtBeginSubsection[]
{ \begin{frame}&lt;beamer&gt;{Agenda}
    \tableofcontents[currentsection,currentsubsection]
  \end{frame}}

\beamerdefaultoverlayspecification{&lt;+-&gt;}

\begin{document}

\begin{frame}
  \titlepage
\end{frame}

\begin{frame}
  \frametitle{Agenda}
  \tableofcontents
  % You might wish to add the option [pausesections]
\end{frame}

\section&lt;presentation&gt;*{Extendiendo el modelo del software libre al hardware}

\begin{frame}{Objetivos}
  \begin{block}{Principal}
    Mostrar que el Open Source Hardware es una realidad.
  \end{block}
  \begin{block}{Especificos}
    \begin{itemize}
    \item Presentar una descripción general de como se hace el hardware.
    \item Definir y contextualizar el término Open Source Hardware y otros necesarios para entenderlo.
    \item Mostrar algunos proyectos de Open Source Hardware.
    \end{itemize}
  \end{block}
\end{frame}

% \begin{frame}
%   \frametitle{Glosario}
%   \begin{itemize}
%   \item HDL acrónimo de Hardware Description Language (Lenguaje de descripción de hardware).
%   \item PCB acrónimo de Printed Circuit Board (Tarjeta de circuito impreso).
%   \item VLSI acrónimo de Very Large Scale Integration.
%   \item FPGA acrónimo de Field Programable Gate Array.
%   \item Netlist, lista de conexiones.
%   \item footprint
%   \end{itemize}
% \end{frame}

\section{Como se hace el hardware}

\subsection{Lo que se necesita}

\begin{frame}{Herramientas EDA}{¿Qué es CAD?}
  \begin{itemize}
  \item CAD es el acrónimo de Computer Aided Design (Diseño asistido por computador).
  \item En principio se refiere a aplicaciones para hacer dibujos.
  \item Se usa en general para cualquier campo del conocimiento en el que se pueda diseñar por medio de un computador.
  \item ECAD es el acrónimo de Electronic Computer Aided Design (Diseño electrónico asistido por computador).
  \end{itemize}
\end{frame}

\begin{frame}{Herramientas EDA}{¿Qué es EDA?}
  \begin{itemize}
  \item EDA es el acrónimo de Electronic Design Automation (Automatización de diseño electrónico).
  \item Se refiere a todas las herramientas involucradas en el desarrollo de hardware.
  \item Es todo el software ECAD y hardware requeridos para el desarrollo de hardware.
  \item Hardware requerido
    \begin{itemize}
    \item HDK (Hardware Development Kits)
    \item HPP (Hardware Prototyping Plataforms).
    \end{itemize}
  \end{itemize}
\end{frame}

\begin{frame}{Herramientas EDA}
  \begin{itemize}
  \item Lenguajes de descripción de circuitos.
    \begin{itemize}
    \item netlist, ejemplo spice.
    \item HDL, ejemplo verilog.
    \end{itemize}
    \vspace{9pt}
  \item Captura esquemática y modelado gráfico.
    \begin{itemize}
    \item Diagramas de flujo.
    \item ASM.
    \item etc\dots{}
    \end{itemize}

    \vspace{9pt}
  \item Simuladores y visualizadores.
    \vspace{9pt}
  \item Fabricación de tarjetas de cirtuitos impresos (PCB).
  \item Fabricación de circuitos integrados (VLSI).
  \item Programación de dispositivos lógicos (FPGA, PAL, PLD).
  \end{itemize}
\end{frame}

\subsection{Como se hace}

\begin{frame}
  \begin{figure}
    \includegraphics[scale=0.6]{img/metodologia}
    \caption{Metodología universal de diseño \cite{Guillermo}.}
    \label{fig:metodologia}
  \end{figure}
\end{frame}

\subsection{Lo que se obtiene}

\begin{frame}{Producto terminado}
  \begin{figure}
    \includegraphics[scale=0.85]{transmisor/1b80}
    \caption{Transmisor Ronja 10M Metropolis}
  \end{figure}
\end{frame}

\begin{frame}{Hardware mecánico}
  \begin{figure}
    \includegraphics[scale=0.9]{transmisor/1b50}
  \end{figure}
\end{frame}

\begin{frame}{Diseño Hardware mecánico}{Hecho en \alert{qcad} - \url{http://www.ribbonsoft.com/qcad_downloads.html}}
  \begin{figure}
    \includegraphics[scale=0.225]{transmisor/tx_pcb2}
  \end{figure}
\end{frame}

\begin{frame}{Hardware mecánico}
  \begin{figure}
    \includegraphics[scale=0.85]{transmisor/1b76}
    \caption{Dentro esta el Hardware electrónico}
  \end{figure}
\end{frame}

\begin{frame}{Hardware electrónico}
  \begin{figure}
    \includegraphics[scale=0.85]{transmisor/1b84}
    \caption{Tarjeta con dispositivos electrónicos}
  \end{figure}
\end{frame}

\begin{frame}{Hardware electrónico}
  \begin{figure}
    \includegraphics[scale=0.85]{transmisor/1b5e}
    \caption{Tarjeta de circuito impreso (PCB)}
  \end{figure}
\end{frame}

\begin{frame}{Hardware electrónico}{Se visualiza con \alert{gerbv} - \url{http://gerbv.sourceforge.net}}
  \begin{figure}
    \includegraphics[scale=0.4]{transmisor/transmisor_gerber.png}
    \caption{Archivo gerber}
  \end{figure}
\end{frame}

\begin{frame}{Diseño de Hardware electrónico}{Se edita con \alert{pcb} - \url{http://pcb.gpleda.org}}
  \begin{figure}
    \includegraphics[scale=0.65]{transmisor/metropolis_transmitter}
    \caption{Archivo PCB}
  \end{figure}
\end{frame}

\begin{frame}{Diseño de Hardware electrónico}{Creado con \alert{gEDA/gschem} - \url{http://www.gpleda.org}}
  \begin{figure}
    \includegraphics[scale=0.21]{transmisor/transmisor_esquema}
    \caption{Archivo del diagrama esquemático}
  \end{figure}
\end{frame}

\begin{frame}{Producción de Hardware}
  \begin{figure}
    \includegraphics[scale=0.3]{img/objetivos}
    \label{fig:objetivos}
    \caption{Objetivos de los productos}
  \end{figure}
\end{frame}
 
\section{Que es Open Source Hardware}
%DISPONIBILIDAD DE LOS COMPONENTES
\subsection{Definiciones formales}

\begin{frame}{Free hardware design}{Libre hardware design}
  \begin{itemize}
  \item Se refiere a un diseño que se puede copiar, distribuir, modificar y fabricar libremente.
  \item Libre para hacer claridad que es libre y no gratis.
  \end{itemize}
\end{frame}

\begin{frame}{Open source hardware}
  \begin{itemize}
  \item Se refiere al hardware que tiene disponible toda su información de diseño.
  \item El Open Source Hardware puede estar basado en Free Hardware Design.
  \item o también en diseños que no son totalmente libres.
  \end{itemize}
\end{frame}

% \begin{frame}{No hay hardware libre}
%   Como hay una diferenciación entre el diseño y la implemntación no se debe usar el termino porque no es claro.
%   \item No se debe usar el termino Free Hardware.
% \end{frame}

\begin{frame}{Open Hardware}
  \begin{itemize}
  \item Es marca registrada del Programa Open Hardware Specification.
  \item Es una forma limitada de Open Source Hardware
    \begin{itemize}
    \item Garantiza la disponibilidad de especificaciones para escribir controladores para el dispositivo.
    \end{itemize}
  \end{itemize}
\end{frame}

\begin{frame}
  \begin{figure}
    \includegraphics[scale=0.3]{img/categorias}
    \caption{Categorías de hardware}
    \label{fig:categorias}
  \end{figure}
\end{frame}

\begin{frame}{Problemas y restricciones}{Herramientas y formatos ECAD}
  \begin{itemize}
  \item Históricamente los formatos han estado ligados al software.
  \item EDIF estandar fallido.
  \item No hay un formato estandar aceptado para intercambio de archivos ECAD.
  \item Práctica común de compartir imágenes.
    \begin{itemize}
    \item Aunque no son editables con las herramientas que fueron creadas son consideradas código fuente.
    \end{itemize}
  \end{itemize}
\end{frame}

\begin{frame}{Problemas y restricciones}{Herramientas y formatos ECAD}
  \begin{table}
    \begin{tabular}{|c|c|c|}
      \hline
      Software &amp; \multicolumn{2}{c|}{Formato Nativo\footnote{Si es imágen se debe reescribir}}\\
       &amp; Abierto\footnote{Libre o estandar} &amp; Cerrado\\
      \hline
      Libre &amp; 0 &amp; 1\\
      Gratis &amp; 2 &amp; 3\\
      Pago &amp; 4 &amp; 5\\
      \hline
    \end{tabular}
    \caption{Niveles de restricción}
    \label{tab:niveles}
  \end{table}
\end{frame}

\subsection{Para que el Open Source Hardware}

\begin{frame}{Globalización y sociedad del conocimiento}
  \begin{figure}
    \includegraphics[scale=0.3]{img/internet}
    \label{fig:internet}
    \caption{Modelo de descripción y descomposición de Internet en capas \cite{Bercelli}.}
  \end{figure}
\end{frame}

\begin{frame}{Modelo del Software Libre}
  \begin{itemize}
  \item Garantiza a cualquier persona derechos para usar, estudiar, modificar y compartir el software.
  \item La garantía se establece legalmente con un contrato (Licencia).
%  \item Permite la democratización de los medios de producción.
  \item Procura el uso de protocolos estandar.
  \item Abre la capa lógica a la sociedad del conocimiento.
  \end{itemize}
  \begin{figure}
    \includegraphics{img/listen-eighth}
  \end{figure}
\end{frame}

\begin{frame}{Cultura Libre}
  \begin{itemize}
  \item Extensión del modelo del software libre.
  \item Garantiza el derecho a compartir los recursos culturales.
  \item También se hace por medio de licenciamiento.% \cite{cc}.
  \item Abre la capa de contenidos a la sociedad del conocimiento.
  \end{itemize}
\end{frame}

% Carolina Botero.

% Diff, sl codigo libertad modificar código
% cl importancia fomentar una cultura de compartir entre las personas los recursos culturales frente a una cultura de control de copia que es la que favorece un sistema de derecho de autor tradicional.
% diff en cl no necesariamente se debe permitir la modificación, ya con compartir es cultura libre.


% garantiza la posibilidad de circuolar los objetos culturales
% definicones de cultura que tienen que ver con


%Gabriel Zea

% %3476741
% Ejercer el derecho que tiene para ver las obras

% libertad de acceso al conocimiento y producción cultural, patrimonio de la gente en últimas, el acceso a la cultura no debia estar regulado por trabas financieras, debería poder acceder al contenido cultural como aacceder a un servicio básico.

% Uno debería poder acceder ala cultura sin ningún tipo de barrera, del que lo ve.
% Del productor cultural, en donde se produce la cultura en medios económicos hay mucha presion donde hay mucha presión y en últimas no es libre de crear entonces esta es satisfaciendo el mercado bajo presión, sin esa presión realmente crearía.

% yokoman, no es música de baile, raya lo experimental que usa discursos chavistas para hacer las piezas, no podría circular sus piezas en un entorno comercial. entonces lo que hace es ejercer su libertadf de creador y darle la oportunidad a otras personas de hacer lo mismo.

% Los ceradores culturales y los artistas buscan la felicidad a partir de la creación, así ser feliz no valla de la mano de lo económico, clave de la cultura libre para crear.

% Wired sobre arduino
% pillar el blog de arduino, artículo como de hace 3 meses. wiring en colombia, coincidencialmente tien que ver con el arte y el diseño, que lo enmarca en el terreno de la creación libre. proccesing, en los 90 principios de 2000 el arte elctrónico se hizo con privativo, los etos en la creación digital son muy marcados. el asunto se volvio asficciante, entonces proccesing se lanza independiente sin ningun compormiso software  libre y entnoces boom de gente que usa el proyecto y contribuye. El bom se da en el arte y luego toca el terreno de la ingeniería. Entonces nace wiring como sistema de prototipado compatible como procesing, aplano el terreno para que apareciera arduino, las librerias base para wiring y cean una plataforma de hardware acesible que cualquier persona pudiera crear y usarla Arduino, de nuevo boom en el campo artístico. se convierte casí en un estandar en el campo del diseño, arte y música, genera un eto pero como es abierto el eto también esta abierto.

\begin{frame}{Open Source Hardware}
  \begin{itemize}
  \item Para abrir la capa de infraestructura se deben tener en cuanta:
    \begin{itemize}
    \item Free Hardware Design.
    \item Open Source Hardware
    \end{itemize}
  \item El modelo del software libre se puede extender hasta Free Hardware Design.
  \item Debe usarse otro modelo para la implementación de Open Source Hardware.
    % Modelo de negocio como en software Libre, basado en servicios y no en el constructo físico.
  \end{itemize}
\end{frame}

\section{Proyectos de Open Source Hardware}

\subsection&lt;presentation&gt;*{Nivel de restricción}


\begin{frame}{Openmoko}{\url{http://www.openmoko.com}}
  \begin{figure}
    \includegraphics[scale=0.65]{img/freerunner_shop1}
    \caption{Teléfono móvil.}
    \label{fig:openmoko}
  \end{figure}
\end{frame}

\begin{frame}{The Open Graphics Project}{\url{http://opengraphics.org}}
  \begin{figure}
    \includegraphics[scale=0.35]{img/ogsim-screen1}
    \caption{Tarjeta de video.}
    \label{fig:ogp}
  \end{figure}
\end{frame}

\begin{frame}{Open sparc}{\url{http://www.opensparc.net}}
  \begin{figure}
    \includegraphics[scale=0.4]{img/ultrasparc-t2-layout}
    \caption{Procesador de 64 bits.}
    \label{fig:opensparc}
  \end{figure}
\end{frame}

\begin{frame}{Ronja}{\url{http://ronja.twibright.com}}
  \begin{figure}
    \includegraphics[scale=0.22]{img/122e}
%    \caption{Nivel de restricción 0}
    \label{fig:ronja}
  \end{figure}
\end{frame}

\begin{frame}{RobotCub}{\url{http://www.robotcub.org}}
  \begin{figure}
    \includegraphics[scale=0.085]{img/DSC_3997}
    \caption{iCub.}
    \label{fig:icub}
  \end{figure}
\end{frame}

\begin{frame}{ECB AT91 V2}{\url{http://www.emqbit.com}}
  \begin{figure}
    \includegraphics[scale=0.6]{img/V2}
    \caption{Free open SBC design Single Board.}
    \label{fig:ecb}
  \end{figure}
\end{frame}

\begin{frame}{Arduino}{\url{http://www.arduino.cc}}
  \begin{figure}
    \includegraphics[scale=0.6]{img/arduino316}
    \caption{Plataforma para prototipado.}
    \label{fig:arduino}
  \end{figure}
\end{frame}

% \begin{frame}{slide}
%   % Diferencias HW L y HW C
% %   \begin{itemize}
% %   \item Modelo cerrado...
% %   \item Modelo abierto... el desarrollo con modelo abierto va hacía... será parte de tu vida y no lo sabías
% %   \end{itemize}
%   Nombrar proyectos\\
%   Cuadro (Matriz de los proyectos y que tipo de hardware ``libre'' es..)
% \end{frame} 

\section&lt;presentation&gt;*{Extendiendo el modelo del software libre al hardware}

\begin{frame}{Conclusiones}
  \begin{block}{}
    \begin{itemize}
    \item El Diseño de hardware es un proceso que esta al alcance de todos, tiene grandes alcances y es importante buscar modelos que lleven el diseño a la producción en masa.
    \item Ya existen varios proyectos de gran envergadura que son Open Source Hardware.
    \item Hay un grave problema de interoperabilidad entre formatos y herramientas.
    \end{itemize}
  \end{block}
\end{frame}

\begin{frame}{Agradecimientos}
  \begin{itemize}
  \item Karel ``Clock'' Kulhavý - Ronja.
  \item Graham Seaman - Open Collector.
  \item Andres Calderon - emQbit.
  \item Carolina Botero.
  \item Gabriel Zea.
  \item Organización de FLISoL Buga 2010.
  \item Jorge Eliecer Guevara (Patrocinar el transporte aereo de altaimpedancia)
  \end{itemize}
\end{frame}

\appendix

\section&lt;presentation&gt;*{Referencias}

\begin{frame}
  \frametitle&lt;presentation&gt;{Bibliografía I}
  \begin{thebibliography}{99}
    \beamertemplatebookbibitems
  \bibitem[1]{PardoBoluda}Fernando Pardo Carpio y José A. Boluda Grau
    \newblock \emph{VHDL, Lenguaje para síntesis y modelado de circuitos, 2a. edición}
    \newblock Alfaomega, 2004
  \bibitem&lt;1-&gt;[Bercelli 2006]{Bercelli}Ariel Bercelli
    \newblock \emph{Aprender la Libertad}
    \newblock 2006
    \newblock \url{http://www.aprenderlalibertad.org/libro-all}
  \end{thebibliography}
\end{frame}

\begin{frame}
  \frametitle&lt;presentation&gt;{Bibliografía II}
  \begin{thebibliography}{99}
    \beamertemplatearticlebibitems
  \bibitem&lt;1-&gt;[Güichal 2005]{Guillermo}Guillermo Güichal
    \newblock \emph{Diseño Digital Utilizando Lógicas Programables}
    \newblock Junio 29, 2005
    \newblock \url{http://fpga.com.ar/notas/NotasCompletas.pdf}
  \bibitem&lt;1-&gt;[4]{clasificacion}Ivan González, Juan González y Francisco Gómez-Arribas
    \newblock \emph{Hardware libre: clasificación y desarrollo de hardware reconfigurable en entornos GNU/Linux}
    \newblock 6 de Septiembre de 2003
    \newblock \url{http://www.iearobotics.com/personal/juan/publicaciones/art4/hardware-libre.pdf}
  \end{thebibliography}
\end{frame}

\begin{frame}[allowframebreaks]
  \frametitle&lt;presentation&gt;{Infografía}
  \begin{thebibliography}{99}
    \beamertemplatearticlebibitems
  \bibitem[5]{Ales}\emph{gEDA - GPL Electronic Design Automation}, \url{http://www.geda.seul.org/talks/deluge_ales.pdf}
  \bibitem&lt;1-&gt;[6]{ronja}\emph{Ronja 10M Metropolis Transmitter}, \url{http://ronja.twibright.com/transmitter/index.php}
  \bibitem&lt;1-&gt;[7]{definiciones}\emph{Definitions}, \url{http://www.opencollector.org/Whyfree/definitions.html}
  \bibitem&lt;1-&gt;[8]{openhardware}The Open Hardware Certification Program, \url{http://web.archive.org/web/20010203155900/www.openhardware.org/}
  \bibitem&lt;1-&gt;[9]{freesoftware}\emph{La definición de Software Libre}, \url{http://www.gnu.org/philosophy/free-sw.es.html}
    % \item Charlas de Fredy y Jorge
  \end{thebibliography}
\end{frame}

\section&lt;presentation&gt;*{Sobre este documento}

\begin{frame}
  \begin{block}{Licencia}
    \begin{figure}
      \includegraphics[scale=0.9]{img/by-sa}
    \end{figure}
    \centering
    \small Creative Commons Atribución-Compartir Obras Derivadas Igual 2.5 Colombia
    \small \url{http://creativecommons.org/licenses/by-sa/2.5/co}
\end{block}
\begin{block}{}
  Creado con \LaTeX/Beamer
\end{block}
\end{frame}

\begin{frame}{AltaImpedancia}
  \begin{figure}
    \includegraphics{img/altaimpedancia-acerca-de}
  \end{figure}
  \begin{block}{}
    Es un Special Interest Group (SIG) en Electrónica con Software Libre, Free Hardware Design (FHD) y Open Source Hardware (OSH).
  \end{block}
  \begin{block}{Contacto}
    \centering
    Jorge Ernesto Guevara Cuenca\\
    \href{mailto:ernesto@altaimpedancia.org}{ernesto@altaimpedancia.org}\\
    Fredy Pulido López\\
    \href{mailto:digitalfredy@altaimpedancia.org}{digitalfredy@altaimpedancia.org}
  \end{block}
\end{frame}

\end{document}
</t>
<t tx="jegc.20111102130010.1119">@language latex
\documentclass{beamer}

\useinnertheme[shadow=true]{rounded}
\useoutertheme{infolines}
\usecolortheme{orchid}
\definecolor{rojo}{rgb}{0.9,0,0}
\setbeamercolor{structure}{fg=rojo}
\setbeamercolor{item projected}{use=item,fg=black,bg=item.fg!50}
\setbeamercolor*{palette primary}{fg=white,bg=rojo}
\setbeamercolor*{palette secondary}{parent=palette primary,use=palette primary,bg=palette primary.bg!90!black}
\setbeamercolor*{palette tertiary}{parent=palette primary,use=palette primary,bg=palette primary.bg!80!black}
\setbeamercolor*{palette quaternary}{parent=palette primary,use=palette primary,bg=palette primary.bg!70!black}
\setbeamercolor{titlelike}{parent=palette primary}
\setbeamercovered{highly dynamic}


\usepackage[utf8]{inputenc}
\usepackage[spanish]{babel}
\usepackage{graphicx}
\usepackage{url}
\usepackage{times}
\usepackage[T1]{fontenc}
\hypersetup{pdfkeywords=open free design source hardware colombia Software Libre abierto 2011 AltaImpedancia alta impedancia electrónica alternativa simulación simulation circuit circuito}

\title[Simulación de circuitos con Software Libre]{Simluación de circuitos con Software Libre}
\author[JEGC 2011]{Jorge~Ernesto~Guevara~Cuenca}
\institute[\url{www.fuac.edu.co}]
{ \inst{1}
  Colibri - Comunidad de Usuarios de Software Libre en Colombia\\
  \url{http://www.slcolombia.org}
  \and
  \inst{2}
  Alta Impedancia - \url{http://www.altaimpedancia.org}
  \and
  \inst{3}
  Hackbo - Hackerspace Bogotá -  \url{http://www.hackbo.co}
  \and
  \inst{4}
  Universidad Autónoma de Colombia - \url{http://www.fuac.edu.co}
}
\date[III Muestra tecnológica UAC]
{III Muestra tecnológica\\Universidad Autónoma de Colombia\\26 de octubre de 2011}

\subject{Simulación de circuitos con Sofware Libre, III Muestra tecnológica Universidad Autónoma de Colombia, 26 de octubre de 2011}


\logo{\includegraphics[height=1cm]{img/uac}}

\AtBeginSubsection[]
{ \begin{frame}&lt;beamer&gt;{Agenda}
    \tableofcontents[currentsection,currentsubsection]
  \end{frame}}

\beamerdefaultoverlayspecification{&lt;+-&gt;}

\begin{document}

\begin{frame}
  \titlepage
\end{frame}

\begin{frame}
  \frametitle{Agenda}
  \tableofcontents
  % You might wish to add the option [pausesections]
\end{frame}

\section&lt;presentation&gt;*{Simulación de circuitos con Software Libre}

\begin{frame}
  \frametitle{Objetivos}
  \begin{itemize}
  \item Dar a conocer algunas aplicaciones de Software Libre EDA.
  \item Incentivar el uso de Software Libre para electrónica en la educación.
  \item Mostrar como simular circuitos electricos mediante ejemplos con los programas qucs, scilab y gEDA con gnucap.
  \end{itemize}
\end{frame}

\section{Proyectos de Open Source Hardware}

\subsection{Motivación}

\begin{frame}{IP04 IP-PBX}{\url{http://www.rowetel.com}}
  \begin{figure}
    \centering
    \includegraphics{img/ip04}
    \caption{PBX IP 4 puertos (Asterisk)}
    \label{fig:asterisk}
  \end{figure}
\end{frame}

\begin{frame}{Arduino}{\url{http://www.arduino.cc}}
  \begin{figure}
    \includegraphics[scale=0.6]{img/arduino316}
    \caption{Plataforma para prototipado.}
    \label{fig:arduino}
  \end{figure}
\end{frame}

\begin{frame}{Wiring}{\url{http://wiring.org.co}}
  \begin{figure}
    \centering
    \includegraphics[scale=0.3]{img/wiring}
    \caption{Plataforma para prototipado}
    \label{fig:wiring}
  \end{figure}
\end{frame}

\begin{frame}{FreeRunner}{\url{http://www.openmoko.com}}
  \begin{figure}
    \includegraphics[scale=0.65]{img/freerunner_shop1}
    \caption{Teléfono móvil.}
    \label{fig:openmoko}
  \end{figure}
\end{frame}

\begin{frame}{NanoNote}{\url{https://sharism.cc}}
  \begin{figure}
    \centering
    \includegraphics{img/nano}
    \caption{Agenda digital}
    \label{fig:nanonote}
  \end{figure}
\end{frame}

\begin{frame}{ECB AT91 V2}{\url{http://www.emqbit.com}}
  \begin{figure}
    \includegraphics[scale=0.6]{img/V2}
    \caption{Free open SBC design Single Board.}
    \label{fig:ecb}
  \end{figure}
\end{frame}

\section{Software Libre disponible}

\subsection[gEDA - \url{http://www.gpleda.org}]{gEDA}

\begin{frame}{GPL'd Electronic Design Automation}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.4]{img/geda.png}
  \end{figure}
  \begin{itemize}
  \item gEDA es acrónimo de GPL'd Electronic Design Automation.
  \item gEDA es una suite de aplicaciones de software libre EDA para diseño de circuitos eléctricos, con la que se puede hacer captura esquemática, simulación, creación de prototipos y producción.
  \end{itemize}
\end{frame}

\begin{frame}{Herramientas que componen la suite}
  \begin{itemize}
  \item gEDA / gaf(gschem and friends)
      \begin{itemize}
      \item Captura esquemática.
      \item Librería de símbolos.
      \item Verificador de símbolos.
      \item Editor de atributos.
      \item Generador de netlist.
      \item Utilidades.
      \item Documentación y ejemplos.
      \end{itemize}
    \item Desarrolladas separadamente pero que se usan con la suite.
      \begin{itemize}
      \item Simulación análoga.
      \item Creación de circuitos impresos.
      \item Simulación digital.
      \end{itemize}
  \end{itemize}
\end{frame}

\begin{frame}{gaf - gschem and friends}{gschem}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.35]{img/gscheme.png}
  \end{figure}

\end{frame}

\begin{frame}{gaf - gschem and friends}{gschem}
  Programa de dibujo especializado para ECAD.
  \begin{itemize}
  \item Entiende conexiones eléctricas.
  \item Asociación de atributos.
  \item Diseño jerárquico.
  \item Programado en C y scheme.
  \end{itemize}
\end{frame}

\begin{frame}{gaf - gschem and friends}{Librería de símbolos}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.25]{img/simbolos.png}
  \end{figure}
  \begin{itemize}
  \item Más de 1400 símbolos, todos bajo GPL.
  \item El formato de archivo es ASCII, usado para símbolos y esquemas.
  \item Descarga de símbolos \url{http://www.gedasymbols.org}
  \item \textbf{gsymcheck} Verificador de símbolos.
  \end{itemize}
\end{frame}

\begin{frame}{gaf - gschem and friends}{gattrib}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.4]{img/gattrib.png}
  \end{figure}
  Editor de Atributos
\end{frame}

\begin{frame}{gaf - gschem and friends}{docs, examples}
  \begin{itemize}
  \item \textbf{gnetlist} Genera apartir de archivo esquemático un netlist en alguno de los 28 formatos soportados.
    \pause
  \item Utilidades: 17 utilidades más que complementan gEDA/gaf (cli).
    \begin{itemize}
    \item gmk\_sym, smash\_megafile, convert\_sym, sarlacc\_schem, olib, gsch2pcb, grenum, gschlas, sarlacc\_sym, gschupdate, gsymupdate, gschemdoc, refdes\_renum, tragesym, pads\_backannotate, garchive, gsymfix.pl
    \end{itemize}
  \end{itemize}
\end{frame}

\begin{frame}{gaf - gschem and friends}{docs, examples}
  \begin{itemize}
  \item Documentación: Manuales de los programas y el wiki completo hasta la fecha de la revisión.
    \pause
  \item Ejemplos:
    \begin{itemize}
    \item gTAG: Interface para conectar desde el puerto USB del computador a dispositivos conm JTAG.
    \item Detector de luz
    \item Amplificador de radio frecuencia
    \item Amplificador en dos etapas
    \end{itemize}
  \end{itemize}
\end{frame}

\begin{frame}{Simulación análoga}{\textbf{gnucap} - \url{http://www.gnu.org/software/gnucap}}
  GNU circuit Analisys Package
  \begin{itemize}
  \item Simulador de circuitos de proposito general.
  \item Aunque soporta modelos de spice no esta basado en spice.
  \end{itemize}
\end{frame}

\begin{frame}{Simulación análoga}{\textbf{ngspice} - \url{http://ngspice.sourceforge.net}}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.5]{img/nglogo.jpg}
  \end{figure}
  Simulador de circuitos basado en los simuladores de código abierto Spice3f5, Cider1b1 y Xspice.
\end{frame}

\begin{frame}{Simulación análoga}{GSpiceUI}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.3]{img/GSpiceUI.jpg}
  \end{figure}
  Frontend gráfico para gnucap y ngspice.
\end{frame}

\begin{frame}{Simulación análoga}{\textbf{gwave} - \url{http://gwave.sourceforge.net}}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.25]{img/gwave.png}
  \end{figure}
  \begin{itemize}
  \item Visor de señales análogas.
  \item Puede leer archivos bianrios (raw) de spice2G6, spice3F5 o ngspice y datos tabulados en formato ASCII para usar con gnucap o cualquier otra herramienta que genere este tipo de archivo.
  \end{itemize}
\end{frame}

\begin{frame}{Creación de circuitos impresos}{xgsch2pcb}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.35]{img/xgsch2pcb.png}
  \end{figure}
  Front-end gráfico para generar archivos pcb apartir de un archivo de gschem.
\end{frame}

\begin{frame}{Creación de circuitos impresos}{PCB - \url{http://pcb.gpleda.org}}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.35]{img/pcb.jpg}
  \end{figure}
  Editor de circuitos impresos (PCB).
\end{frame}

\begin{frame}{Creación de circuitos impresos}{Gerbv - \url{http://gerbv.sourceforge.net}}
  \begin{figure}[!h]
    \centering
    \includegraphics{img/gerbv.png}
  \end{figure}
  Visor de archivos gerber.
\end{frame}

\begin{frame}{Simulación digital}{Icarus Verilog - \url{http://www.icarus.com/eda/verilog}}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.6]{img/icarus.png}
  \end{figure}
  \textbf{iverilog} Herramienta de simulación y síntesis para el lenguaje de descripción de hardware Verilog HDL.
\end{frame}

\begin{frame}{Simulación digital}{\textbf{gtkwave} - \url{http://gtkwave.sourceforge.net}}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.25]{img/gtkwave.png}
  \end{figure}
  \begin{itemize}
  \item Visor de señales digitales.
  \item Formatos soportados: VCD, EVCD,	LXT, Synopsis y .out.
  \end{itemize}
\end{frame}

\subsection[qucs - \url{http://qucs.sourceforge.net}]{qucs}

\begin{frame}{Quite Universal Circuit Simulator}
  \begin{figure}
    \centering
    \includegraphics[scale=0.4]{qucs/img/qucslogo4.png}
  \end{figure}
  Simulador de circuitos integrado, lo que significa que puede configurar un circuito eléctrico con un interfaz gráfico y simular su comportamiento en pequeña señal, gran señal y con ruido.
\end{frame}

\subsection[kicad - \url{http://kicad.sourceforge.net}]{kicad}

\begin{frame}{¿Qué es kicad?}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.5]{img/kicad.png}
  \end{figure}
  Diseño y fabriacación de circuitos impresos
  Se compone de un gestor de proyectos y cuatro programas principales.
\end{frame}

\begin{frame}{Componentes}
  \begin{figure}[!h]
    \centering
    \includegraphics[scale=0.6]{img/kicad-project.png}
    \includegraphics[scale=0.5]{img/eeschema.png}
    \includegraphics[scale=0.5]{img/pcbnew.png}
    \includegraphics[scale=0.4]{img/gerbview.png}
  \end{figure}
  \begin{itemize}
  \item \alert{kicad} El gestor de proyectos
  \item \alert{eeschema} Capturador esquemático
  \item \alert{cvpcb} Selector de componentes usados en el diseño del circuito
  \item \alert{pcbnew} Editor de circuitos impresos
  \item \alert{gerbview} Visor Gerber (Documentos Fotoploter)
  \end{itemize}
\end{frame}

% \begin{frame}{kicad}{El selector de componentes usados en el diseño del circuito}
%   \textbf{cvpcb} Es una herramienta que permite asignar huellas/formas (footprint) de circuito impreso a los símbolos esquemáticos del diseño en eeschema.
% \end{frame}

\subsection[\LaTeX - \url{http://www.latex-project.org}]{\LaTeX}

\begin{frame}{\LaTeX}
  \begin{figure}
    \centering
    \includegraphics[scale=0.6]{img/latex}
  \end{figure}
  \begin{itemize}
  \item Documentación estructurada (WYSIWYM - What You See Is What You Mean)
  \item Paquetes especializados
    \begin{itemize}
    \item Mapas de karnaugh
    \item Formatos IEEE
    \item Esquemas de circuitos
    \item Muchos más\dots
    \end{itemize}
  \end{itemize}
\end{frame}

\subsection[Octave - \url{http://www.octave.org}]{Octave}

\begin{frame}{¿Qué es octave?}
  \begin{figure}
    \centering
    \includegraphics[scale=0.5]{img/octave}
  \end{figure}
  Software para análisis númerico
\end{frame}

\subsection[Scilab - \url{http://www.scilab.org}]{Scilab}

\begin{frame}{¿Qué es scilab?}
  \begin{figure}
    \centering
    \includegraphics{scilab/img/Scilab-WebSite.png}
    \includegraphics{scilab/img/Puffin-Logo_medium}
  \end{figure}
  Software para computación numérica con centenares de funciones matemáticas, un lenguaje de programación de alto nivel desde el que se puede acceder a estructuras de datos avanzadas y capacidad para graficar en 2D y 3D.
\end{frame}

\begin{frame}{¿Para qué scilab?}
  \begin{figure}
    \centering
    \includegraphics{scilab/img/Scilab-WebSite.png}
    \includegraphics{scilab/img/Puffin-Logo_medium}
  \end{figure}
  \begin{itemize}
  \item Matemáticas y simulación
  \item Visualización 2D y 3D
  \item Optimización
  \item Estadística
  \item Análisis y diseño de sistemas de control
  \item Procesamiento de señales
  \item Desarrollo de aplicaciones
  \end{itemize}
\end{frame}

\section{Análisis transitorio}


\begin{frame}{xcos}
  Editor gráfico para diseñar modelos de sistemas dinámicos híbridos.
  \begin{figure}
    \centering
    \includegraphics[scale=0.6]{scilab/img/xcos.png}
  \end{figure}
\end{frame}

\subsection{Oscilador Colpitts}

\begin{frame}{qucs}
  \begin{figure}
    \centering
    \includegraphics[scale=0.3]{qucs/img/qucs-colpitts.png}
  \end{figure}
\end{frame}

\begin{frame}{gschem}
  \begin{figure}
    \centering
    \includegraphics[scale=0.4]{geda/img/gschem/gschem-colpitts.png}
  \end{figure}
\end{frame}

\section{Análisis en frecuencia}

\subsection{Filtro pasa altos}

\begin{frame}{qucs}
  \begin{figure}
    \centering
    \includegraphics[scale=0.4]{qucs/img/qucs-pasaltos.png}
  \end{figure}
\end{frame}

\begin{frame}{gnucap}
  \begin{figure}
    \centering
    \includegraphics[scale=0.4]{geda/img/gschem/gschem-pasaltos.png}
  \end{figure}
\end{frame}


\section&lt;presentation&gt;*{Simulación de circuitos con Software Libre}

\begin{frame}{¿Que tiene que ver Debian en esta charla?}
  \begin{figure}
    \includegraphics[scale=0.32]{img/choice.jpg}
  \end{figure}
    \begin{itemize}
  \item También existe FEL
  \end{itemize}
\end{frame}

\begin{frame}{Conclusiones}
  \begin{block}{}
    \begin{itemize}
    \item Hay Software Libre variado para hacer simulaciones de circuitos por lo menos en el ámbito académico de una universidad.
    \item A veces es necesario usar más de un programa para lograr una simulación de un solo circuito, esto a primera vista puede parecer compicado, pero en realidad termina siendo una ventaja pues es posible hacer un análisis más profundo si con una sola aplicación no se obtiene el resultado deseado.
    \end{itemize}
  \end{block}
\end{frame}

\begin{frame}{Agradecimientos}
  \begin{itemize}
  \item A todos los maestros que durante la carrera me permitieron hacer la tarea con software libre y a los que no también porque apredí más, tuve que hacerla dos veces ;)
  \item Todas las personas que han hecho parte de los colectivos en los que hemos trabajado en este tema.
  \end{itemize}
\end{frame}

\appendix

\section&lt;presentation&gt;*{Referencias}

\begin{frame}
  \frametitle&lt;presentation&gt;{Bibliografía I}
  \begin{thebibliography}{99}
    \beamertemplatebookbibitems
  \bibitem[1]{Savant}C. J. Savant, Jr., Martin S. Roden y Gordon L. Carpenter
    \newblock \emph{DISEÑO ELECTRÓNICO Circuitos y sistemas}
    \newblock Addison Wesley Longman, 1992
  \end{thebibliography}
\end{frame}

\begin{frame}[allowframebreaks]
  \frametitle&lt;presentation&gt;{Infografía}
  \begin{thebibliography}{99}
    \beamertemplatearticlebibitems
  \bibitem&lt;1-&gt;[Xcos en images]{video} \emph{Xcos en images}, \url{http://www.youtube.com/watch?v=nKSvAX9D1Vc}
    \newblock 15 de septiembre de 2011
  \bibitem&lt;1-&gt;[Oscilador colpitts]{colpitts}\emph{Oscilador del ejemplo} \url{http://qucs.sourceforge.net/examples/colpitts_base.sch}
    \newblock 15 de septiembre de 2011
  \end{thebibliography}
\end{frame}

\section&lt;presentation&gt;*{Sobre este documento}

\begin{frame}
  \begin{block}{Licencia}
    \begin{figure}
      \includegraphics[scale=0.9]{img/by-sa}
    \end{figure}
    \centering
    \small Creative Commons\\
    \small Atribución-Compartir Obras Derivadas Igual 2.5 Colombia\\
    \small \url{http://creativecommons.org/licenses/by-sa/2.5/co}
\end{block}
\begin{block}{}
  Creado con \LaTeX / Beamer
\end{block}
\end{frame}

\section&lt;presentation&gt;*{Comunidades}

\begin{frame}{Como unirse}
  \begin{figure}
    \includegraphics{img/altaimpedancia-acerca-de}
  \end{figure}
  \begin{block}{}
    \begin{itemize}
    \item Linux en Caja - \url{http://linuxencaja.net}
    \item HackBo - \url{http://hackbo.co}
    \end{itemize}
  \end{block}
  \begin{block}{Contacto}
    \centering
    Jorge Ernesto Guevara Cuenca\\
    \href{mailto:ernesto@altaimpedancia.org}{ernesto@altaimpedancia.org}\\
  \end{block}
\end{frame}

\end{document}
%@-leo
</t>
<t tx="jegc.20111102130010.1120"></t>
<t tx="jegc.20111102130010.1121"></t>
<t tx="jegc.20111102130010.1127">&lt;&lt;documentclass&gt;&gt;

&lt;&lt;Tema&gt;&gt;
</t>
<t tx="jegc.20111102130010.4882">@first \documentclass{beamer}</t>
<t tx="jegc.20111102130010.4885">\useinnertheme[shadow=true]{rounded}
\useoutertheme{infolines}
\usecolortheme{orchid}
\definecolor{rojo}{rgb}{0.9,0,0}
\setbeamercolor{structure}{fg=rojo}
\setbeamercolor{item projected}{use=item,fg=black,bg=item.fg!50}
\setbeamercolor*{palette primary}{fg=white,bg=rojo}
\setbeamercolor*{palette secondary}{parent=palette primary,use=palette primary,bg=palette primary.bg!90!black}
\setbeamercolor*{palette tertiary}{parent=palette primary,use=palette primary,bg=palette primary.bg!80!black}
\setbeamercolor*{palette quaternary}{parent=palette primary,use=palette primary,bg=palette primary.bg!70!black}
\setbeamercolor{titlelike}{parent=palette primary}
\setbeamercovered{highly dynamic}</t>
<t tx="jegc.20111108184529.1130"></t>
<t tx="jegc.20111108184529.1132"></t>
<t tx="jegc.20111108184529.1133"></t>
<t tx="jegc.20111108184529.1135"></t>
<t tx="jegc.20111108184529.1138"></t>
</tnodes>
</leo_file>
