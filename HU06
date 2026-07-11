Feature: Visualización de instrucciones de apilamiento por paso
  Como Operario de Armado y Despacho en CD
  Quiero ver instrucciones claras paso a paso de cómo apilar cada producto en el rolly
  Para armar el pedido correctamente sin cometer errores

  Scenario: Visualización correcta de los pasos de apilamiento
    Given que el plan de armado ha sido generado por la IA
    When el operario accede a la pantalla de instrucciones
    Then el sistema muestra cada paso de apilamiento en orden secuencial
    And indica el producto, el rolly y la posición correspondiente a cada paso

  Scenario: Avance entre pasos de apilamiento
    Given que el operario está visualizando un paso del plan de armado
    When marca el paso actual como completado
    Then el sistema avanza automáticamente al siguiente paso de la instrucción
