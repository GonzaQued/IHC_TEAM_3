Feature: Eliminar o editar recordatorios

    Como paciente quiero editar y eliminar los recordatorios registrados para dejar de recibir notificaciones de recordatorios seleccionados.   

    Scenario: Editar recordatorios registrados
    Given el usuario se encuentre en la lista de recordatorios registrados
    When el usuario escoja un recordatorio
    And escoja la opción para editar recordatorio
    And realice cambios en el recordatorio seleccionado
    And confirme los cambios realizados
    Then el recordatorio seleccionado es editado con las nuevas configuraciones
    And aparece un mensaje “Modificado”.

    Scenario: Eliminar recordatorios registrados
    Given el usuario se encuentre en la lista de recordatorios registrados
    When el usuario escoja un recordatorio
    And escoja la opción para eliminar recordatorios
    And confirme la eliminación del recordatorio
    Then el recordatorio seleccionado es eliminado del registro de recordatorios
    And aparece un mensaje “Eliminado”.

    Scenario: Cancelar cambios de recordatorios
    Given el usuario se encuentre en la lista de recordatorios registrados
    When el usuario escoja un recordatorio
    And escoja la opción para eliminar o editar recordatorio
    And escoja la opción para cancelar cambios
    Then el recordatorio se mantiene con las configuraciones iniciales
    And aparece un mensaje “Sin cambios”.