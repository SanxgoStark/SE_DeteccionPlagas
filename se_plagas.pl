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

factores:- new(Ventana, dialog('')),
           new(Plagas, menu('Plagas', cycle)),
           new(Pr,label()),

        %new(Pregunta,text('Cama 1')),

	new(Pregunta_1,text('Cama 1')),
	send(Pregunta_1,alignment,left), 

	new(Pregunta_2,text('Cama 2')),
	send(Pregunta_2,alignment,left), 

	new(Pregunta_3,text('Cama 3')),
	send(Pregunta_3,alignment,left), 

	new(Pregunta_4,text('Cama 4')),
	send(Pregunta_4,alignment,left),


    new(R_1, menu('',cycle)),
	new(R_2, menu('',cycle)),
	new(R_3, menu('',cycle)),
	new(R_4, menu('',cycle)),

        Respuestas_validas = ['V','R','A'],

	send_list(R_1, append, Respuestas_validas),
	send_list(R_2, append, Respuestas_validas),
	send_list(R_3, append, Respuestas_validas),
	send_list(R_4, append, Respuestas_validas),
        new(Grupo_de_Preguntas, dialog_group(texts, group)),
	send(Grupo_de_Preguntas, gap, size(0, 20)),%definimos el tamaño de la separacion de pregunta en pregunta

	%Enviamos cada pregunta al grupo correspondiente
	send(Grupo_de_Preguntas, append, Pregunta_1),
	send(Grupo_de_Preguntas, append, Pregunta_2),
	send(Grupo_de_Preguntas, append, Pregunta_3),
	send(Grupo_de_Preguntas, append, Pregunta_4),

        send(Ventana, append,Grupo_de_Preguntas),

        new(Grupo_de_Respuestas, dialog_group(menus, group)),
	send(Grupo_de_Respuestas, gap, size(0, 11)),%definimos el tamaño de la separacion de respuesta en respuesta

	%Enviamos cada respuesta al grupo correspondiente
	send(Grupo_de_Respuestas, append, R_1),
	send(Grupo_de_Respuestas, append, R_2),
	send(Grupo_de_Respuestas, append, R_3),
	send(Grupo_de_Respuestas, append, R_4),
        send(Ventana, append,Grupo_de_Respuestas,right),

        new(Evaluar, button('Siguiente',and( message(@prolog,evaluar,
                                            Plagas?selection,
                                            R_1?selection,
                                            R_2?selection,
                                            R_3?selection,
                                            R_4?selection,
                                            Pr),message(@prolog,sintomas,Pr?selection),message(Ventana,destroy)
                                           ))),

    send_list(Plagas,append,[]),
    send(Pr,colour,white),
    send(Ventana, append,Pr),
    send(Ventana, append,Evaluar),
    send(Ventana, open_centered).