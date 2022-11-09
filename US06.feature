Feature: Búsqueda de productos

    Como paciente quiero buscar los productos que necesito por filtros para conseguir directamente las recomendaciones de las medicinas que necesito.

    Scenario: Búsqueda de productos
    Given el paciente se encuentre en la sección de compras por farmacias afiliadas
    When el usuario busque su producto por el buscador
    Then se mostrará la lista de productos disponibles de acuerdo a la búsqueda.

    Scenario: Filtros de categorías
    Given el paciente se encuentre en la sección de compras por farmacias afiliadas
    When el usuario seleccione “Categorías”
    Then se mostrará la lista de categorías ordenadas según los productos disponibles.

    Scenario: Filtros de productos
    Given el paciente se encuentre en la sección de compras por farmacias afiliadas
    When el usuario seleccione “Filtrar por”
    And escoja la opción de filtro
    Then se mostrará la lista de productos disponibles según el filtro seleccionado.

    Scenario: Activar o desactivar filtración de productos
    Given previamente el paciente ha filtrado los productos deseados
    When el paciente se encuentre en la sección de filtros buscados
    And seleccione el filtro que esté a su agrado.
    And active la búsqueda de filtros.
    And desactive la búsqueda de filtros.
    Then los filtros buscados aparecerán cada vez que ingrese nuevamente.