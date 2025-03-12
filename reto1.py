#calculo de paneles solares para saber el consumo electrico
def calcular_paneles_solares ():
    #entrada de datos 
    consumo_anual = float(input("Ingrese el consumo anual de electricidad en KWh: "))
    eficiencia_panel = float(input("Ingrese la eficiencia del panel (en porcentaje para mejor entendimiento, ejm. 15 para el 15%)")) /100
    area_panel = float(input("Ingrese el area promedio de un panel solar en m2: "))
    radiacion_solar = float(input("Ingrese la radiacion solar promedio en Kwh/m2/dia: "))
    horas_sol = float(input("Ingrese las horas de sol promedio al dia: "))
    #Calculo de la potencia diaria y anual generada por un panel solar
    potencia_diaria = area_panel * radiacion_solar * eficiencia_panel
    potencia_anual = potencia_diaria * 365 #No aplica para año bisiesto 
    #Calculo para conocer la cantidad de paneles necesarios
    paneles_necesarios = consumo_anual / potencia_anual
    paneles_necesarios_redondeo = round (paneles_necesarios)
    area_total = paneles_necesarios_redondeo * area_panel
    print(f"Potencia diaria que genera un panel solar: {potencia_diaria: .2f} Kwh")
    print(f"Potencia anual ")
