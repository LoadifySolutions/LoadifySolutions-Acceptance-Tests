Feature: HU-04 Visualizacion de rollys contenedores necesarios para el pedido
    Como Operario de Armado y Despacho en CD, quiero ver cuantos rollys contenedores
    necesitare antes de iniciar el armado, para prepararlos con anticipacion y no interrumpir el proceso

Scenario: Sistema calcula y muestra los rollys necesarios
    Given que el operario ha seleccionado una orden y visualiza su detalle
    When el sistema procesa la informacion de los productos
    Then muestra el numero exacto de rollys necesarios para completar ese pedido

Scenario: Pedido que requiere un solo rolly
    Given que el operario ha seleccionado una orden con pocos productos
    When el sistema procesa la informacion
    Then muestra que solo se necesita un rolly e indica que el pedido es de bajo volumen
