# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.contrib.auth.models import User


class TblAreaLaboral(models.Model):
    id_area_laboral = models.AutoField(primary_key=True)
    area_laboral = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_area_laboral'


class TblAuxiliar(models.Model):
    id_auxiliar = models.AutoField(primary_key=True)
    calificacion_auxiliar = models.DecimalField(max_digits=2, decimal_places=0)
    id_disponibilidad_auxiliar = models.ForeignKey('TblDisponibilidadAuxiliar', models.DO_NOTHING,
                                                   db_column='id_disponibilidad_auxiliar')
    id_perfil = models.ForeignKey('TblPerfil', db_column='id_perfil', on_delete=models.CASCADE)

    class Meta:
        db_table = 'tbl_auxiliar'


class TblCargoEmpleado(models.Model):
    id_cargo = models.AutoField(primary_key=True)
    cargo_empleado = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_cargo_empleado'


class TblCoordinador(models.Model):
    id_coordinador = models.AutoField(primary_key=True)
    id_perfil = models.ForeignKey('TblPerfil', db_column='id_perfil', on_delete=models.CASCADE)

    class Meta:
        db_table = 'tbl_coordinador'


class TblDisponibilidadAuxiliar(models.Model):
    id_disponibilidad_auxiliar = models.AutoField(primary_key=True)
    disponibilidad = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_disponibilidad_auxiliar'


class TblEmpleado(models.Model):
    id_empleado = models.AutoField(primary_key=True)
    id_area_laboral = models.ForeignKey(TblAreaLaboral, models.DO_NOTHING, db_column='id_area_laboral')
    id_cargo = models.ForeignKey(TblCargoEmpleado, models.DO_NOTHING, db_column='id_cargo')
    id_perfil = models.ForeignKey('TblPerfil', db_column='id_perfil', on_delete=models.CASCADE)

    class Meta:
        db_table = 'tbl_empleado'


class TblEstadoImplemento(models.Model):
    id_estado_implemento = models.AutoField(primary_key=True)
    estado_implemento = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_estado_implemento'


class TblEstadoMantenimiento(models.Model):
    id_estado_mantenimiento = models.AutoField(primary_key=True)
    estado_mantenimiento = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_estado_mantenimiento'


class TblEstadosServicio(models.Model):
    id_estado_servicio = models.AutoField(primary_key=True)
    estado_servicio = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_estados_servicio'


class TblImplemento(models.Model):
    id_ficha_tecnica_implemento = models.AutoField(primary_key=True)
    marca_implemento = models.CharField(max_length=45)
    modelo_implemento = models.CharField(max_length=45)
    referencia_implemento = models.CharField(max_length=45, blank=True, null=True)
    cantidad_memoria = models.CharField(max_length=45, blank=True, null=True)
    procesador = models.CharField(max_length=45, blank=True, null=True)
    sistema_operativo = models.CharField(max_length=45, blank=True, null=True)
    perifericos = models.TextField(blank=True, null=True)
    comentario = models.TextField(blank=True, null=True)
    id_estado_implemento = models.ForeignKey(TblEstadoImplemento, models.DO_NOTHING, db_column='id_estado_implemento')
    id_tipo_implemento = models.ForeignKey('TblTipoImplemento', models.DO_NOTHING, db_column='id_tipo_implemento')

    class Meta:
        db_table = 'tbl_implemento'


class TblInventario(models.Model):
    id_inventario = models.AutoField(primary_key=True)
    serial_implemento = models.CharField(unique=True, max_length=45)
    descripcion_implemento = models.TextField()
    id_ficha_tecnica = models.ForeignKey(TblImplemento, models.DO_NOTHING, db_column='id_ficha_tecnica')

    class Meta:
        db_table = 'tbl_inventario'


class TblMantenimiento(models.Model):
    id_mantenimiento = models.AutoField(primary_key=True)
    area_mantenimiento = models.CharField(max_length=45)
    fecha_mantenimiento = models.DateField()
    hora_mantenimiento = models.TimeField()
    id_auxiliar = models.ForeignKey(TblAuxiliar, models.DO_NOTHING, db_column='id_auxiliar')
    id_estado_mantenimiento = models.ForeignKey(TblEstadoMantenimiento, models.DO_NOTHING,
                                                db_column='id_estado_mantenimiento')
    id_inventario = models.ForeignKey(TblInventario, models.DO_NOTHING, db_column='id_inventario')
    id_prioridad_mantenimiento = models.ForeignKey('TblPrioridadMantenimiento', models.DO_NOTHING,
                                                   db_column='id_prioridad_mantenimiento')
    id_tipo_mantenimiento = models.ForeignKey('TblTipoMantenimiento', models.DO_NOTHING,
                                              db_column='id_tipo_mantenimiento')

    class Meta:
        db_table = 'tbl_mantenimiento'


class TblPerfil(models.Model):
    """Proxy model

    proxy model that extends the base data with other information
    """
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    id_perfil = models.AutoField(primary_key=True)
    picture = models.ImageField(
        default='users/pictures/default-profile.png',
        upload_to='users/pictures',
        blank=True,
        null=False
    )
    creado = models.DateTimeField(auto_now_add=True)
    modificado = models.DateTimeField(auto_now=True)
    posicion = models.ForeignKey('TblPosicion', on_delete=models.CASCADE, null=False)

    def __str__(self):
        """Return username"""
        return self.user.username

    class Meta:
        db_table = 'tbl_perfil'


class TblPermisosUsuario(models.Model):
    id_permisos_usuario = models.AutoField(primary_key=True)
    permiso = models.TextField()
    url_dashboard = models.TextField()

    class Meta:
        db_table = 'tbl_permisos_usuario'


class TblPosicion(models.Model):
    id_posicion = models.AutoField(primary_key=True)
    posicion = models.CharField(max_length=50)

    def __str__(self):
        return self.posicion

    class Meta:
        db_table = 'tbl_posicion'


class TblPrestamo(models.Model):
    id_inventario_prestamo = models.AutoField(primary_key=True)
    cantidad = models.IntegerField()
    cantidad_disponible = models.IntegerField()
    cantidad_en_prestamo = models.IntegerField()
    fecha_entrada = models.DateTimeField()
    fecha_devolucion = models.DateTimeField()
    id_ficha_tecnica = models.ForeignKey(TblImplemento, models.DO_NOTHING, db_column='id_ficha_tecnica')

    class Meta:
        db_table = 'tbl_prestamo'


class TblPrestamosTecnologicos(models.Model):
    id_prestamos_tecnologicos = models.AutoField(primary_key=True)
    cantidad_requerida = models.IntegerField()
    id_inventario_prestamo = models.ForeignKey(TblPrestamo, models.DO_NOTHING, db_column='id_inventario_prestamo')
    id_ticket = models.ForeignKey('TblTicketServicio', models.DO_NOTHING, db_column='id_ticket')

    class Meta:
        db_table = 'tbl_prestamos_tecnologicos'


class TblPrioridadMantenimiento(models.Model):
    id_prioridad_mantenimiento = models.AutoField(primary_key=True)
    prioridad = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_prioridad_mantenimiento'


class TblPrioridadServicio(models.Model):
    id_prioridad = models.AutoField(primary_key=True)
    prioridad = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_prioridad_servicio'


class TblServicio(models.Model):
    id_servicio = models.AutoField(primary_key=True)
    fecha_servicio = models.DateField()
    hora_servicio = models.TimeField()
    descripcion_servicio = models.TextField(blank=True, null=True)
    id_auxiliar = models.ForeignKey(TblAuxiliar, models.DO_NOTHING, db_column='id_auxiliar')
    id_empleado = models.ForeignKey(TblEmpleado, models.DO_NOTHING, db_column='id_empleado')
    id_estado_servicio = models.ForeignKey(TblEstadosServicio, models.DO_NOTHING, db_column='id_estado_servicio')
    id_prioridad_servicio = models.ForeignKey(TblPrioridadServicio, models.DO_NOTHING,
                                              db_column='id_prioridad_servicio')
    id_tipo_servicio = models.ForeignKey('TblTipoServicio', models.DO_NOTHING, db_column='id_tipo_servicio')

    class Meta:
        db_table = 'tbl_servicio'


class TblSoporteTecnico(models.Model):
    id_soporte_tecnico = models.AutoField(primary_key=True)
    id_ticket = models.ForeignKey('TblTicketServicio', models.DO_NOTHING, db_column='id_ticket')

    class Meta:
        db_table = 'tbl_soporte_tecnico'


class TblTicketMantenimiento(models.Model):
    id_reporte_mantenimiento = models.AutoField(primary_key=True)
    conclusion_mantenimiento = models.TextField(blank=True, null=True)
    id_estado_mantenimiento = models.ForeignKey(TblEstadoMantenimiento, models.DO_NOTHING,
                                                db_column='id_estado_mantenimiento')
    id_mantenimiento = models.ForeignKey(TblMantenimiento, models.DO_NOTHING, db_column='id_mantenimiento')

    class Meta:
        db_table = 'tbl_ticket_mantenimiento'


class TblTicketServicio(models.Model):
    id_ticket_servicio = models.AutoField(primary_key=True)
    fecha_ticket = models.CharField(max_length=45)
    conclusion_servicio = models.TextField()
    id_servicio = models.ForeignKey(TblServicio, models.DO_NOTHING, db_column='id_servicio')

    class Meta:
        db_table = 'tbl_ticket_servicio'


class TblTipoImplemento(models.Model):
    id_tipo_implemento = models.AutoField(primary_key=True)
    tipo_implemento = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_tipo_implemento'


class TblTipoMantenimiento(models.Model):
    id_tipo_mantenimiento = models.AutoField(primary_key=True)
    tipo_mantenimiento = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_tipo_mantenimiento'


class TblTipoServicio(models.Model):
    id_tipo_servicio = models.AutoField(primary_key=True)
    tipo_servicio = models.CharField(max_length=45)

    class Meta:
        db_table = 'tbl_tipo_servicio'
