Feature: HU-03 Historial de ordenes procesadas
    Como Operario de Armado y Despacho en CD, quiero acceder al historial de
    ordenes que ya procese, para consultar pedidos anteriores en caso de dudas o revisiones

Scenario: Operario consulta su historial
    Given que el operario ha iniciado sesion en su dispositivo
    When accede a la seccion de historial
    Then el sistema muestra las ordenes procesadas anteriormente ordenadas por fecha

Scenario: Operario consulta el detalle de una orden pasada
    Given que el operario esta en la seccion de historial
    When selecciona una orden procesada anteriormente
    Then el sistema muestra el detalle completo de esa orden incluyendo fecha y productos armados
