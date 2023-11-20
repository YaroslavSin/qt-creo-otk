qt-creo-otk
===========

Qt project to use C++ Object Toolkit API for CAD Creo Parametric. Intended for
asynchronous mode.

Asynchronous mode is a multiprocess mode in which the Creo Object TOOLKIT

C++ application and Creo Parametric can perform concurrent operations. Unlike

synchronous mode, the asynchronous mode uses remote procedure calls (rpc) as

the means of communication between the application and Creo Parametric.

Another important difference between synchronous and asynchronous modes is in

the startup of the Creo Object TOOLKIT C++ application. In synchronous mode,

the application is started by Creo Parametric, based on information contained in

the registry file. In asynchronous mode, the application is started
independently of

Creo Parametric and subsequently either starts or connects to a Creo Parametric

process.

 

Purpose
-------

An ability to use Qt reach graphical user interface to manage data from and
control the Creo Parametric.

 

Setup
-----

1.  Create environment variable PROTOOLKIT8_SYS and point to "Common Files" path
    (example "D:\\PTC\\Creo X.0.X.0\\Common Files");

2.  Add in PATH environment variable the path to Creo toolkit libraries
    (D:\\PTC\\Creo X.0.X.0\\Common Files\\x86e_win64\\lib);

3.  In the file ..\\otk\\otk_cpp\\include\\cipxdict_i.h replace byte to ::bytе.

 

Testing
-------

1.  Start Creo Parametric

2.  Crete or open a model

3.  Push a button “Connect and get model name” in Qt app

4.  In case of success a message box with the model name will appear
