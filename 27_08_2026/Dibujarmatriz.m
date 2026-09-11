function PointMatrix = Dibujarmatriz(Largo,Ancho,Alto, Xinit,Yinit,Zinit)
P1 = [Xinit;Yinit;Zinit;1];
P2 = [Xinit+Ancho;Yinit;Zinit;1];
P3 = [Xinit;Yinit+Largo;Zinit;1];
P4 = [Xinit+Ancho;Yinit+Largo;Zinit;1];
P5 = [Xinit;Yinit;Zinit+Alto;1];
P6 = [Xinit+Ancho;Yinit;Zinit+Alto;1];
P7 = [Xinit;Yinit+Largo;Zinit+Alto;1];
P8 = [Xinit+Ancho;Yinit+Largo;Zinit+Alto;1];

PointMatrix = [P1, P2, P3, P4, P5, P6, P7, P8];
end