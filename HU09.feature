Feature: Visualización de métricas de eficiencia operativa
  Como Gerente de Operaciones Logísticas
  Quiero ver métricas como tasa de llenado por rolly contenedor, número de rollys contenedores usados por pedido, tiempo promedio de armado y errores operativos
  Para evaluar el rendimiento de la operación y detectar oportunidades de mejora

  Scenario: Gerente visualiza las métricas del día
    Given que el gerente está en el dashboard
    When accede a la sección de métricas
    Then el sistema muestra la tasa de llenado por rolly, número de rollys usados, tiempo promedio de armado y errores operativos del período seleccionado

  Scenario: Gerente filtra métricas por rango de fechas
    Given que el gerente está en la sección de métricas
    When selecciona un rango de fechas específico
    Then el sistema actualiza las métricas mostrando únicamente los datos correspondientes al período seleccionado
