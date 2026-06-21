Feature: HU-01 Visualizacion de lista de ordenes pendientes
    Como Operario de Armado y Despacho en CD, quiero ver la lista de ordenes
    pendientes asignadas a mi, para saber que pedidos debo preparar durante mi jornada

Scenario: Operario visualiza sus ordenes pendientes
    Given que el operario ha iniciado sesion en su dispositivo
    When accede a la seccion de ordenes
    Then el sistema muestra la lista de ordenes pendientes asignadas a el con su informacion basica

Scenario: No hay ordenes pendientes
    Given que el operario ha iniciado sesion en su dispositivo
    When accede a la seccion de ordenes y no tiene ninguna asignada
    Then el sistema muestra un mensaje indicando que no hay ordenes pendientes
