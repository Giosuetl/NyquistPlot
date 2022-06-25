%Producimos la función de transferencia M(s) usando las tres funciones de 
%transferencia de primer orden con retardo de tiempo. Introduzca el siguiente programa en el archivo:
num1=3187.4;
den1=[1 3355.2];
num2=594.9;
den2=[1 1.956];
num3=[0.0271 0.2737];
den3=[1 0];
delay=0.03;
%Defina el vector de frecuencia y calcule las respuestas de frecuencia de los tres sistemas de primer orden. 
%Introduzca el siguiente programa en el archivo:
w=logspace(-1,3,1000);
G1=freqs(num1,den1,w);
G2=freqs(num2,den2,w);
G3=freqs(num3,den3,w);
G12=G1.*G2;
G123=G12.*G3;
%Agregue el componente de retardo de tiempo a la respuesta de frecuencia. Introduzca el siguiente programa en el archivo:
j=sqrt(-1);
Ny=G123.*exp(-j*w*delay);
%Presente el diagrama bidimensional con un círculo unitario centrado en el origen del plano complejo. Introduzca el siguiente programa en el archivo:
plot(real(Ny),imag(Ny),'b','linewidth',2)
hold on
th=[0:2*pi/60:(60)*2*pi/60];
R=exp(j*th);
plot(R)
axis([-4 4 -4 4])
xlabel('Real')
ylabel('Imag')
