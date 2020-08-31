# Generated by Django 3.1 on 2020-08-31 15:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('links', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tblarealaboral',
            name='id_area_laboral',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblauxiliar',
            name='id_auxiliar',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblcargoempleado',
            name='id_cargo',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblcoordinador',
            name='id_coordinador',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tbldisponibilidadauxiliar',
            name='id_disponibilidad_auxiliar',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblempleado',
            name='id_empleado',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblestadoimplemento',
            name='id_estado_implemento',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblestadomantenimiento',
            name='id_estado_mantenimiento',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblestadosservicio',
            name='id_estado_servicio',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblimplemento',
            name='id_ficha_tecnica_implemento',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblinventario',
            name='id_inventario',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblmantenimiento',
            name='id_mantenimiento',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblpermisosusuario',
            name='id_permisos_usuario',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblprestamo',
            name='id_inventario_prestamo',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblprestamostecnologicos',
            name='id_prestamos_tecnologicos',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblprioridadmantenimiento',
            name='id_prioridad_mantenimiento',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblprioridadservicio',
            name='id_prioridad',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblservicio',
            name='id_servicio',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblsoportetecnico',
            name='id_soporte_tecnico',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblticketmantenimiento',
            name='id_reporte_mantenimiento',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblticketservicio',
            name='id_ticket_servicio',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tbltipoimplemento',
            name='id_tipo_implemento',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tbltipomantenimiento',
            name='id_tipo_mantenimiento',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tbltiposervicio',
            name='id_tipo_servicio',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='tblusuario',
            name='id_usuario',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
