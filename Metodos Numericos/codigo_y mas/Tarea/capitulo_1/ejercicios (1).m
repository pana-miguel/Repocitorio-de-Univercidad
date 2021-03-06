%% EJERCICIO 1.1
Pesoagua = 60/100;           Pesocorporal = 100/100;
plasma_agua = 4.5/100;       plasma_corporal = 7.5/100;
tejido_agua = 4.5/100;       tejido_corporal = 7.5/100;
linfa_agua = 12/100;         linfa_corporal = 20/100;
huesos_agua = 4.5/100;       huesos_corporal = 7.5/100;
intracelular_agua = 33/100;  transcelular_corporal = 2.5/100;
  
disp('El porcentaje del peso total corporal debe corresponder al agua transcelular es');
x=60-(4.5 + 4.5 + 12 + 4.5 + 33);
disp(strcat(num2str(x),'%'));
disp('El porcentaje del total de agua del cuerpo debe corresponder al agua intracelular es');
y=100-(7.5 + 7.5 + 20 + 7.5 + 2.5);
disp(strcat(num2str(y),'%'));


%% EJERCICIO 1.2
  salon = [240 256000];
  total_estudiantes = [2.25 2400]; %30 2.25 VOLUMEN  2400 POTENCIA= W/t
  T1 = 20; %°C
  T1K = T1+273;
  T2 = 0;
  MwT = 28.97;
  P = 101.325;
  V = salon([1]);
  R = 8.314;
  t = 15; % 15 min a s
  %Capacidad calorifica
  Cv_aire = 718; % 0,718 KJ A J  
  
  %ley de gas ideal
   m = P*V*MwT/(8.314*293);
  
  %Calor sensible a volumen constante
   Q = m*Cv_aire*(T2-T1);
   %despejando 
   for i=1:1:t
       T3(i) = (total_estudiantes([2])*i*60)/(m*Cv_aire);
       disp('tiempo min');
       disp(i);
       disp('La temperatura varia en C°:');
       disp(T3(i));
       tiempo = [1:i];
       plot(tiempo,T3);
       xlabel('Tiempo min');
       ylabel('Variación de temperatura °C');
      
       
   end 

 %% EJERCICIO 1.3
    
  balance_inicial = 1512.33; %01/05 
  %Fecha respectiva : 01/06 01/07 01/08 01/09
  depositos = [220.13 216.80 450.25 127.31];
  retiros = [327.26 378.61 106.80 350.61];
  cant_fecha = 4;
  for i=1:1:4
    
   balance_anterior = balance_inicial;
   balance_final(i) = depositos(i)+ balance_anterior - retiros(i);
   balance_inicial = balance_final(i);
   tt = [1:i];
   fprintf('Balance de cada mes %8.3f\n',balance_final(i));
   plot(tt,balance_final);
  end
  
    if balance_inicial == balance_anterior;
      disp('El cálculo es de estado estacionario');
    else 
      disp('El cálculo es de estado transitorio');
    end 
  
%% EJERCICIO 1.4
   %Teorema de la continuidad volumetrica 
   % V1.A1-V2.A2-V3.A3=0  V1.A1=V2.A2+V3.A3
   %Flujo volumétrico   Q = V.A;
   Flujo_ent = 40;
   Flujo_sal2 = 20;
   Flujo_sal3 = (Flujo_ent- Flujo_sal2)/6;
   fprintf('El área requerida en el tubo 3 es %3.2f\n', Flujo_sal3);
  
%% EJERCICIO 1.5
  %{  
      GANA AGUA EL CUERPO
      1L 0.3L 0.05  
      PIERDE AGUA EL CUERPO 
      0.4L 0.2L 1.4L 0.2L 0.35L
    CONDICION ESTADO ESTACIONARIO
       suma_GANA AGUA = suma_PIERDE AGUA 
   %}
   
    Gana = [1 0.3 0.05 0 0.0];
    Pierde = [0.4 0.2 1.4 0.2 0.35];
    
    Gana([5]) = sum(Pierde) - sum(Gana);
    
    disp('La cantidad de agua que se debe tomar por día (L)');
    disp(sum(Gana));
    
 %% EJERCICIO 1.6
 
   %{  
      Paracaista en caida libre
      V(ti+1) = V(ti) + [g-(c/m)*V(ti)](ti+1-ti)
     
   %}
 
  masa_prcaida1 = 70;
  coef_arrastre1 = 12;
  g = 9.81;
  t_1 = 10;
  t = [1:20];
  vi_1 = 0;
  vi_2 = 0;
  masa_prcaida2 = 75; 
  coef_arrastre2 = 15;
  %hallar t2 para que alcance la misma velocidad del paracaida 1
  
  for i=t
      %velocidad del paracaida 1 en 10 s
      
     vf1(i) = vi_1 + ((g - (coef_arrastre1/masa_prcaida1)*vi_1)*(t(i)-(t(i)-1)));
     vi_1 = vf1(i);
     fprintf('Paracaidista 1 -> Tiempo y velocidad %d %6.3f \n',t(i),vf1(i));
      
       %velocidad del paracaida 2 en 10 s
  
      vf2(i) = vi_2 + ((g - (coef_arrastre2/masa_prcaida2)*vi_2)*(t(i)-(t(i)-1)));
      vi_2 = vf2(i);
      fprintf('Paracaidista 2 -> Tiempo y velocidad %d %6.3f \n',t(i),vf2(i));
      
    if(t_1==t(i))
     disp('Tiempo dado para el paracaidista 1');    
    end 
  end
 %% EJERCICIO 1.8
   % ejemplo 1.2 
   %{
     c=12.5
     m=68.1 
    t=10
   tamaño de paso 1s y 0.5
   %}
   t=[1:10];
   
   g=9.81;
   vi_1=0;
   vi_2=0;
   coef_arrastre = 12.5;
   masa_prcaida = 68.1;
   for i=t
   
   vi_1 = vi_1 + ((g - (coef_arrastre/masa_prcaida)*vi_1)*(t(i)-(t(i)-1)));
   disp('Tiempo de paso 1s');
    disp(vi_1);
   vi_2 = vi_2 + ((g - (coef_arrastre/masa_prcaida)*vi_2)*(t(i)-(t(i)-0.5)));

   disp('Tiempo de paso 0.5s');
   disp(vi_2);
   
   end
 
 %% EJERCICIO 1.10
    m = 80;
    c = 10;
    T = [1:20];
    g = 9.81;
    vi = 20;
    
    
    for i=T
     vi = vi + ((g - (c/m)*vi)*(T(i)-(T(i)-1)));
        if(10 == T(i))
          c = 50;    
        end 
     fprintf('Paracaidista tiempo y velocidad %d %6.3f\n',T(i),vi);
     
    end 
  %% EJERCICIO 1.16
   
   %{ 
     Ley de enfriamiento de Newton
    dT/dt=-k(T-Ta)
    Metodo de euler 
    dy/dx = f(x;y) x(i+1) = x(i)+h ; y(i+1)=y(i)+h(f(x;y)); 
    %}
    T_cafe = 68;
    Ta = 21;
    t = [];
    k = 0.017;
    tt = -1;
    h = 1; 
    
    for i=1:11 
        t(i) = tt + 1;
        tt = t(i); 
        T(i) = T_cafe + h*(-k*(T_cafe-Ta));   
        T_cafe = T(i);
       fprintf('Iteracion, Tiempo(min), Temperatura(°C) %d %d %6.2f\n',i,t(i),T(i));
        
       plot(t,T);
       xlabel('tiempo (min)');
       ylabel('Temperatura (°C)');
    end
    
%% EJERCICIO 1.17     
    
    
    
%% EJERCICIO 1.18
   
 Q = [];
 f = [1:10];
 Q(2) = 0.6;
 Q(3) = 0.4;
 Q(7) = 0.2;
 Q(8) = 0.3;
  % PIDEN HALLAR Q1 Q4 Q5 Q6 Q9 Q10 
  
 Q(1) = Q(2) + Q(3);
 Q(6) = Q(8) - Q(7);
 Q(5) = Q(6) + Q(7);
 Q(4) = Q(3) - Q(5);
 Q(9) = Q(4) + Q(8);
 Q(10) = Q(9) + Q(2);
 
plot(f,Q);
xlabel('cant. flujo');
ylabel('Flujo');

 
 
   
    
 
 
 