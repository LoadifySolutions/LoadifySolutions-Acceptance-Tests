Feature: Descarga de reporte de rendimiento en PDF
  Como Gerente de Operaciones Logísticas
  Quiero generar y descargar un reporte en PDF con los datos de eficiencia operativa
  Para presentar resultados ante la dirección y sustentar el impacto económico de la operación

  Scenario: Gerente descarga el reporte exitosamente
    Given que el gerente está visualizando las métricas de eficiencia
    When presiona el botón "Descargar reporte"
    Then el sistema genera y descarga un PDF con los datos de rendimiento del período seleccionado

  Scenario: Descarga de reporte sin datos disponibles
    Given que el gerente intenta descargar un reporte de un período sin operaciones registradas
    When presiona el botón "Descargar reporte"
    Then el sistema muestra un mensaje indicando que no hay datos disponibles para ese período
