Feature: HU-12 Modificacion de regla de compatibilidad
    Como Gerente de Operaciones Logisticas, quiero modificar las reglas de compatibilidad
    existentes, para adaptarlas ante cambios en los productos o necesidades operativas

Scenario: Gerente modifica una regla existente
    Given que el gerente esta en la seccion de reglas de compatibilidad
    And selecciona una regla existente y realiza los cambios necesarios
    When guarda los cambios
    Then el sistema actualiza la regla y la IA aplica los cambios en los siguientes planes de armado

Scenario: Gerente cancela la modificacion
    Given que el gerente esta editando una regla de compatibilidad
    When decide cancelar la edicion sin guardar
    Then el sistema descarta los cambios y mantiene la regla con sus valores originales
