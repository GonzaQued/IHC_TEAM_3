Feature: Eliminar o editar solicitud

    Como paciente quiero editar y eliminar las solicitudes de servicio registradas para cambiar el proceso de la solicitud.

    Scenario: Editar solicitudes registradas
    Given el usuario se encuentre en la lista de solicitudes registradas
    When el usuario escoja una solicitud de servicio
    And escoja la opción para editar solicitud de servicio
    And realice cambios en la solicitud de servicio seleccionada
    And confirme los cambios realizados
    Then la solicitud seleccionada es editada con las nuevas configuraciones o características
    And aparece un mensaje “Modificado”.

    Scenario: Eliminar solicitudes registradas
    Given el usuario se encuentre en la lista de solicitudes registradas
    When el usuario escoja una solicitud de servicio
    And escoja la opción para eliminar solicitud de servicio
    And confirme la eliminación 
    Then la solicitud seleccionado es eliminado del registro de solicitudes
    And aparece un mensaje “Eliminado”.

    Scenario: Cancelar cambios de solicitud
    Given el usuario se encuentre en la lista de solicitudes registradas
    When el usuario escoja una solicitud de servicio
    And escoja la opción para eliminar o editar solicitud
    And escoja la opción para cancelar cambios
    Then la solicitud se mantiene con las configuraciones iniciales
    And aparece un mensaje “Sin cambios”