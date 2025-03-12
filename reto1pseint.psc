Algoritmo Paneles_Solares
    Definir consumo_anual, eficiencia_panel, superficie_panel, radiacion_solar, horas_sol Como Real
    Definir potencia_diaria_panel, potencia_anual_panel, paneles_necesarios, area_total Como Real
    Definir paneles_necesarios_redondeados Como Entero
	
    Escribir "Ingrese el consumo anual de electricidad en kWh: "
    Leer consumo_anual
    Escribir "Ingrese la eficiencia del panel (en porcentaje, ej. 15 para 15%): "
    Leer eficiencia_panel
    eficiencia_panel <- eficiencia_panel / 100
    Escribir "Ingrese el �rea promedio de un panel solar en m�: "
    Leer superficie_panel
    Escribir "Ingrese la radiaci�n solar promedio en kWh/m�/d�a: "
    Leer radiacion_solar
    Escribir "Ingrese las horas promedio de sol por d�a: "
    Leer horas_sol
	
    potencia_diaria_panel <- superficie_panel * radiacion_solar * eficiencia_panel
    potencia_anual_panel <- potencia_diaria_panel * 365
    paneles_necesarios <- consumo_anual / potencia_anual_panel
    paneles_necesarios_redondeados <- Redon(paneles_necesarios) // Redondea hacia arriba
    area_total <- paneles_necesarios_redondeados * superficie_panel
	
    Escribir "Potencia diaria generada por un panel solar: ", potencia_diaria_panel, " kWh"
    Escribir "Potencia anual generada por un panel solar: ", potencia_anual_panel, " kWh"
    Escribir "N�mero de paneles necesarios (redondeado): ", paneles_necesarios_redondeados
    Escribir "�rea total requerida para instalar los paneles: ", area_total, " m�"
FinAlgoritmo 
