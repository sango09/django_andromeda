# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class TblAreaLaboral(models.Model):
    id_area_laboral = models.IntegerField(primary_key=True)
    area_laboral = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_area_laboral'


class TblAuxiliar(models.Model):
    id_auxiliar = models.IntegerField(primary_key=True)
    calificacion_auxiliar = models.DecimalField(max_digits=2, decimal_places=0)
    id_usuario = models.ForeignKey('TblUsuario', models.DO_NOTHING, db_column='id_usuario')
    id_disponibilidad_auxiliar = models.ForeignKey('TblDisponibilidadAuxiliar', models.DO_NOTHING,
                                                   db_column='id_disponibilidad_auxiliar')

    class Meta:
        db_table = 'tbl_auxiliar'


class TblCargoEmpleado(models.Model):
    id_cargo = models.IntegerField(primary_key=True)
    cargo_empleado = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_cargo_empleado'


class TblCoordinador(models.Model):
    id_coordinador = models.IntegerField(primary_key=True)
    id_usuario = models.ForeignKey('TblUsuario', models.DO_NOTHING, db_column='id_usuario')

    class Meta:
        db_table = 'tbl_coordinador'


class TblDisponibilidadAuxiliar(models.Model):
    id_disponibilidad_auxiliar = models.IntegerField(primary_key=True)
    disponibilidad = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_disponibilidad_auxiliar'


class TblEmpleado(models.Model):
    id_empleado = models.IntegerField(primary_key=True)
    id_usuario = models.ForeignKey('TblUsuario', models.DO_NOTHING, db_column='id_usuario')
    id_cargo = models.ForeignKey(TblCargoEmpleado, models.DO_NOTHING, db_column='id_cargo')
    id_area_laboral = models.ForeignKey(TblAreaLaboral, models.DO_NOTHING, db_column='id_area_laboral')

    class Meta:
        db_table = 'tbl_empleado'


class TblEstadoImplemento(models.Model):
    id_estado_implemento = models.IntegerField(primary_key=True)
    estado_implemento = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_estado_implemento'


class TblEstadoMantenimiento(models.Model):
    id_estado_mantenimiento = models.IntegerField(primary_key=True)
    estado_mantenimiento = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_estado_mantenimiento'


class TblEstadosServicio(models.Model):
    id_estado_servicio = models.IntegerField(primary_key=True)
    estado_servicio = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_estados_servicio'


class TblImplemento(models.Model):
    id_ficha_tecnica_implemento = models.IntegerField(primary_key=True)
    marca_implemento = models.CharField(max_length=45)
    modelo_implemento = models.CharField(max_length=45)
    referencia_implemento = models.CharField(max_length=45, blank=True, null=True)
    id_tipo_implemento = models.ForeignKey('TblTipoImplemento', models.DO_NOTHING, db_column='id_tipo_implemento')
    cantidad_memoria = models.CharField(max_length=45, blank=True, null=True)
    procesador = models.CharField(max_length=45, blank=True, null=True)
    sistema_operativo = models.CharField(max_length=45, blank=True, null=True)
    perifericos = models.TextField(blank=True, null=True)
    comentario = models.TextField(blank=True, null=True)
    id_estado_implemento = models.ForeignKey(TblEstadoImplemento, models.DO_NOTHING, db_column='id_estado_implemento')

    class Meta:
        db_table = 'tbl_implemento'


class TblInventario(models.Model):
    id_inventario = models.IntegerField(primary_key=True)
    id_ficha_tecnica = models.ForeignKey(TblImplemento, models.DO_NOTHING, db_column='id_ficha_tecnica')
    serial_implemento = models.CharField(unique=True, max_length=45)
    descripcion_implemento = models.TextField()

    class Meta:
        db_table = 'tbl_inventario'


class TblMantenimiento(models.Model):
    id_mantenimiento = models.IntegerField(primary_key=True)
    area_mantenimiento = models.CharField(max_length=45)
    fecha_mantenimiento = models.DateField()
    hora_mantenimiento = models.TimeField()
    id_inventario = models.ForeignKey(TblInventario, models.DO_NOTHING, db_column='id_inventario')
    id_auxiliar = models.ForeignKey(TblAuxiliar, models.DO_NOTHING, db_column='id_auxiliar')
    id_tipo_mantenimiento = models.ForeignKey('TblTipoMantenimiento', models.DO_NOTHING,
                                              db_column='id_tipo_mantenimiento')
    id_prioridad_mantenimiento = models.ForeignKey('TblPrioridadMantenimiento', models.DO_NOTHING,
                                                   db_column='id_prioridad_mantenimiento')
    id_estado_mantenimiento = models.ForeignKey(TblEstadoMantenimiento, models.DO_NOTHING,
                                                db_column='id_estado_mantenimiento')

    class Meta:
        db_table = 'tbl_mantenimiento'


class TblPermisosUsuario(models.Model):
    id_permisos_usuario = models.IntegerField(primary_key=True)
    permiso = models.TextField()
    url_dashboard = models.TextField()

    class Meta:
        db_table = 'tbl_permisos_usuario'


class TblPrestamo(models.Model):
    id_inventario_prestamo = models.IntegerField(primary_key=True)
    id_ficha_tecnica = models.ForeignKey(TblImplemento, models.DO_NOTHING, db_column='id_ficha_tecnica')
    cantidad = models.IntegerField()
    cantidad_disponible = models.IntegerField()
    cantidad_en_prestamo = models.IntegerField()
    fecha_entrada = models.DateTimeField()
    fecha_devolucion = models.DateTimeField()

    class Meta:
        db_table = 'tbl_prestamo'


class TblPrestamosTecnologicos(models.Model):
    id_prestamos_tecnologicos = models.IntegerField(primary_key=True)
    id_inventario_prestamo = models.ForeignKey(TblPrestamo, models.DO_NOTHING, db_column='id_inventario_prestamo')
    cantidad_requerida = models.IntegerField()
    id_ticket = models.ForeignKey('TblTicketServicio', models.DO_NOTHING, db_column='id_ticket')

    class Meta:
        db_table = 'tbl_prestamos_tecnologicos'


class TblPrioridadMantenimiento(models.Model):
    id_prioridad_mantenimiento = models.IntegerField(primary_key=True)
    prioridad = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_prioridad_mantenimiento'


class TblPrioridadServicio(models.Model):
    id_prioridad = models.IntegerField(primary_key=True)
    prioridad = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_prioridad_servicio'


class TblRolUsuario(models.Model):
    id_rol_usuario = models.IntegerField(primary_key=True)
    rol_usuario = models.CharField(max_length=25)
    id_permisos_usuario = models.ForeignKey(TblPermisosUsuario, models.DO_NOTHING, db_column='id_permisos_usuario')

    class Meta:
        db_table = 'tbl_rol_usuario'


class TblServicio(models.Model):
    id_servicio = models.IntegerField(primary_key=True)
    id_empleado = models.ForeignKey(TblEmpleado, models.DO_NOTHING, db_column='id_empleado')
    id_tipo_servicio = models.ForeignKey('TblTipoServicio', models.DO_NOTHING, db_column='id_tipo_servicio')
    id_prioridad_servicio = models.ForeignKey(TblPrioridadServicio, models.DO_NOTHING,
                                              db_column='id_prioridad_servicio')
    fecha_servicio = models.DateField()
    hora_servicio = models.TimeField()
    descripcion_servicio = models.TextField(blank=True, null=True)
    id_auxiliar = models.ForeignKey(TblAuxiliar, models.DO_NOTHING, db_column='id_auxiliar')
    id_estado_servicio = models.ForeignKey(TblEstadosServicio, models.DO_NOTHING, db_column='id_estado_servicio')

    class Meta:
        db_table = 'tbl_servicio'


class TblSoporteTecnico(models.Model):
    id_soporte_tecnico = models.IntegerField(primary_key=True)
    id_ticket = models.ForeignKey('TblTicketServicio', models.DO_NOTHING, db_column='id_ticket')

    class Meta:
        db_table = 'tbl_soporte_tecnico'


class TblTicketMantenimiento(models.Model):
    id_reporte_mantenimiento = models.IntegerField(primary_key=True)
    id_mantenimiento = models.ForeignKey(TblMantenimiento, models.DO_NOTHING, db_column='id_mantenimiento')
    conclusion_mantenimiento = models.TextField(blank=True, null=True)
    id_estado_mantenimiento = models.ForeignKey(TblEstadoMantenimiento, models.DO_NOTHING,
                                                db_column='id_estado_mantenimiento')

    class Meta:
        db_table = 'tbl_ticket_mantenimiento'


class TblTicketServicio(models.Model):
    id_ticket_servicio = models.IntegerField(primary_key=True)
    fecha_ticket = models.CharField(max_length=45)
    id_servicio = models.ForeignKey(TblServicio, models.DO_NOTHING, db_column='id_servicio')
    conclusion_servicio = models.TextField()

    class Meta:
        db_table = 'tbl_ticket_servicio'


class TblTipoImplemento(models.Model):
    id_tipo_implemento = models.IntegerField(primary_key=True)
    tipo_implemento = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_tipo_implemento'


class TblTipoMantenimiento(models.Model):
    id_tipo_mantenimiento = models.IntegerField(primary_key=True)
    tipo_mantenimiento = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_tipo_mantenimiento'


class TblTipoServicio(models.Model):
    id_tipo_servicio = models.IntegerField(primary_key=True)
    tipo_servicio = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_tipo_servicio'


class TblUsuario(models.Model):
    id_usuario = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=45)
    apellido = models.CharField(max_length=45)
    correo_electronico = models.CharField(unique=True, max_length=45)
    contrasena = models.CharField(max_length=45)
    creado = models.DateTimeField(auto_now_add=True)
    modificado = models.DateTimeField(auto_now=True)
    id_rol_usuario = models.ForeignKey(TblRolUsuario, models.DO_NOTHING, db_column='id_rol_usuario')

    class Meta:
        db_table = 'tbl_usuario'
