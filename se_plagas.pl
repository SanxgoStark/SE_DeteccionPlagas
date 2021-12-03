:- use_module(library(pce)).
:- use_module(library(pce_util)).
:- pce_image_directory('./image').

resource(bienvenida, image, image('welcome.jpg')).


nueva_imagen(Ventana, Imagen, Posicion) :-
new(Figura, figure),
new(Bitmap, bitmap(resource(Imagen),@on)),
send(Bitmap, name, 1),
send(Figura, display, Bitmap),
send(Figura, status, 1),
send(Ventana, display, Figura, Posicion).

iniciar:-
        new(Main, dialog('Bienvenido')),
        new(Btnform,button('INICIAR',and(message(@prolog,factores),message(Main,destroy)))),
	nueva_imagen(Main,bienvenida,point(0,0)),
        send(Main,display,Btnform,point(350,490)),
        send(Main,open_centered).