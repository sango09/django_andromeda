"""Model Andromeda"""

# Django
from django.contrib.auth.models import User
from django.db import models


class TblPosicion(models.Model):
    """Table the users roles"""
    id_posicion = models.AutoField(primary_key=True)
    posicion = models.CharField(max_length=50, null=False)

    def __str__(self):
        return self.posicion

    class Meta:
        db_table = 'tbl_posicion'


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
    posicion = models.ForeignKey(TblPosicion, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username

    class Meta:
        db_table = 'tbl_perfil'


class TblDisponibilidadAuxiliar(models.Model):
    """Table auxiliary availability"""
    id_disponibilidad_auxiliar = models.AutoField(primary_key=True)
    disponibilidad = models.CharField(max_length=45)

    def __str__(self):
        return self.disponibilidad

    class Meta:
        db_table = 'tbl_disponibilidad_auxiliar'


class TblAuxiliar(models.Model):
    """Table  auxiliaries"""
    id_auxiliar = models.AutoField(primary_key=True)
    disponibilidad_auxiliar = models.ForeignKey(TblDisponibilidadAuxiliar, on_delete=models.CASCADE, default=1)
    perfil = models.OneToOneField(TblPerfil, on_delete=models.CASCADE)

    class Meta:
        db_table = 'tbl_auxiliar'


class TblCoordinador(models.Model):
    """Table administrator"""
    id_coordinador = models.AutoField(primary_key=True)
    perfil = models.OneToOneField(TblPerfil, on_delete=models.CASCADE)

    class Meta:
        db_table = 'tbl_coordinador'


class TblAreaLaboral(models.Model):
    """Table work area employee """
    id_area_laboral = models.AutoField(primary_key=True)
    area_laboral = models.CharField(max_length=45)

    def __str__(self):
        return self.area_laboral

    class Meta:
        db_table = 'tbl_area_laboral'


class TblEmpleado(models.Model):
    """Table employees"""
    id_empleado = models.AutoField(primary_key=True)
    area_laboral = models.ForeignKey(TblAreaLaboral, on_delete=models.CASCADE, default=1)
    perfil = models.OneToOneField(TblPerfil, on_delete=models.CASCADE)

    class Meta:
        db_table = 'tbl_empleado'


class TblEstadoImplemento(models.Model):
    """Table status implement in inventory"""
    id_estado_implemento = models.AutoField(primary_key=True)
    estado_implemento = models.CharField(max_length=45)

    def __str__(self):
        return self.estado_implemento

    class Meta:
        db_table = 'tbl_estado_implemento'


class TblSistemaOperativo(models.Model):
    """Table SO of the implement"""
    id_sistema_operativo = models.AutoField(primary_key=True)
    sistema_operativo = models.CharField(max_length=45)

    def __str__(self):
        return self.sistema_operativo

    class Meta:
        db_table = 'tbl_sistema_operativo'


class TblFichaTecnica(models.Model):
    id_ficha_tecnica = models.AutoField(primary_key=True)
    marca_implemento = models.CharField(max_length=45, null=False)
    modelo_implemento = models.CharField(max_length=45, null=False)
    sistema_operativo = models.ForeignKey(TblSistemaOperativo, on_delete=models.CASCADE)
    detalles = models.TextField(max_length=400)

    class Meta:
        db_table = 'tbl_ficha_tecnica'


class TblTipoImplemento(models.Model):
    """Table type implement"""
    id_tipo_implemento = models.AutoField(primary_key=True)
    tipo_implemento = models.CharField(max_length=45)
    ficha_tecnica = models.ForeignKey(TblFichaTecnica, on_delete=models.CASCADE)

    def __str__(self):
        return self.tipo_implemento

    class Meta:
        db_table = 'tbl_tipo_implemento'


class TblInventario(models.Model):
    id_inventario = models.AutoField(primary_key=True)
    tipo_implemento = models.ForeignKey(TblTipoImplemento, on_delete=models.RESTRICT)
    numero_serie = models.CharField(max_length=100, null=False, blank=False)
    fecha_compra = models.DateField()
    precio_compra = models.FloatField()
    usuario_asignado = models.ForeignKey(TblPerfil, on_delete=models.RESTRICT, null=True, blank=True)
    estado_implemento = models.ForeignKey(TblEstadoImplemento, on_delete=models.RESTRICT, null=False, blank=False)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_modificacion = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.usuario_asignado.user.username

    class Meta:
        db_table = 'tbl_inventario'


class TblEstadoServicio(models.Model):
    """Table status the services"""
    id_estado_servicio = models.AutoField(primary_key=True)
    estado_servicio = models.CharField(max_length=45, null=False, blank=False)

    def __str__(self):
        return self.estado_servicio

    class Meta:
        db_table = 'tbl_estado_servicio'


class TblSoporteTecnico(models.Model):
    """Table service request support"""
    id_soporte_tecnico_inmediato = models.AutoField(primary_key=True)
    empleado = models.ForeignKey(TblEmpleado, on_delete=models.CASCADE)
    lugar_soporte = models.CharField(max_length=45, null=False, blank=False)
    descripcion_problema = models.TextField(max_length=500, null=False, blank=False)
    fecha_solicitud = models.DateField()
    hora_solicitud = models.TimeField()
    auxiliar_asignado = models.ForeignKey(TblAuxiliar, on_delete=models.CASCADE)
    estado_servicio = models.ForeignKey(TblEstadoServicio, on_delete=models.RESTRICT, default=1)
    fecha_modificacion = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = 'tbl_soporte_tecnico'


class TblInventarioPrestamo(models.Model):
    id_inventario_prestamo = models.AutoField(primary_key=True)
    inventario = models.ForeignKey(TblInventario, on_delete=models.CASCADE)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_ultima_entrega = models.DateTimeField()
    fecha_ultima_devolucion = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = 'tbl_inventario_prestamo'


class TblPrestamoTecnologico(models.Model):
    """Table service request technological loans"""
    id_prestamos_tecnologicos = models.AutoField(primary_key=True)
    empleado = models.ForeignKey(TblEmpleado, on_delete=models.CASCADE)
    lugar_prestamo = models.CharField(max_length=45, null=False, blank=False)
    implemento = models.ForeignKey(TblInventarioPrestamo, on_delete=models.CASCADE)
    cantidad = models.IntegerField()
    fecha_solicitud_creada = models.DateTimeField(auto_now_add=True)
    fecha_agendada = models.DateField()
    hora_agendada = models.TimeField()
    auxiliar_asignado = models.ForeignKey(TblAuxiliar, on_delete=models.CASCADE)
    estado_servicio = models.ForeignKey(TblEstadoServicio, on_delete=models.CASCADE)
    comentario = models.TextField(max_length=400, null=True, blank=True)

    class Meta:
        db_table = 'tbl_prestamo_tecnologico'


class TblTicketServicio(models.Model):
    """Table ticker to technycal support"""
    id_ticket_servicio = models.AutoField(primary_key=True)
    prestamo_tecnologico = models.ForeignKey(TblPrestamoTecnologico, on_delete=models.CASCADE, null=True, blank=True)
    soporte_tecnico = models.ForeignKey(TblSoporteTecnico, on_delete=models.CASCADE, null=True, blank=True)
    fecha_creacion_ticket = models.DateTimeField(auto_now_add=True)
    calificacion_servicio = models.DecimalField(max_digits=2, decimal_places=0, null=True, blank=True)
    conclusion_servicio = models.TextField(max_length=400)

    class Meta:
        db_table = 'tbl_ticket_servicio'


class TblEstadoMantenimiento(models.Model):
    """Table status maintenance"""
    id_estado_mantenimiento = models.AutoField(primary_key=True)
    estado_mantenimiento = models.CharField(max_length=45)

    def __str__(self):
        return self.estado_mantenimiento

    class Meta:
        db_table = 'tbl_estado_mantenimiento'


class TblPrioridadMantenimiento(models.Model):
    """Table priority maintenance"""
    id_prioridad_mantenimiento = models.AutoField(primary_key=True)
    prioridad_mantenimiento = models.CharField(max_length=45)

    def __str__(self):
        return self.prioridad_mantenimiento

    class Meta:
        db_table = 'tbl_prioridad_mantenimiento'


class TblTipoMantenimiento(models.Model):
    """Table type maintenance"""
    id_tipo_mantenimiento = models.AutoField(primary_key=True)
    tipo_mantenimiento = models.CharField(max_length=45)

    def __str__(self):
        return self.tipo_mantenimiento

    class Meta:
        db_table = 'tbl_tipo_mantenimiento'


class TblMantenimiento(models.Model):
    """Table maintenance"""
    id_mantenimiento = models.AutoField(primary_key=True)
    lugar_mantenimiento = models.CharField(max_length=45, null=False, blank=False)
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_asignada = models.DateField()
    hora_asignada = models.TimeField()
    implemento_inventario = models.ForeignKey(TblInventario, on_delete=models.CASCADE)
    tipo_mantenimiento = models.ForeignKey(TblTipoMantenimiento, on_delete=models.CASCADE)
    prioridad_mantenimiento = models.ForeignKey(TblPrioridadMantenimiento, on_delete=models.CASCADE)
    descripcion_mantenimiento = models.TextField(max_length=400, blank=False, null=False)
    auxiliar_responsable = models.ForeignKey(TblAuxiliar, on_delete=models.CASCADE)
    fecha_modificacion = models.DateTimeField(auto_now=True)
    estado_mantenimiento = models.ForeignKey(TblEstadoMantenimiento, on_delete=models.CASCADE)

    class Meta:
        db_table = 'tbl_mantenimiento'


class TblTicketMantenimiento(models.Model):
    """Table ticket to maintenance"""
    id_ticket_mantenimiento = models.AutoField(primary_key=True)
    mantenimiento = models.ForeignKey(TblMantenimiento, on_delete=models.CASCADE)
    conclusion_mantenimiento = models.TextField(max_length=400, blank=False, null=False)

    class Meta:
        db_table = 'tbl_ticket_mantenimiento'
