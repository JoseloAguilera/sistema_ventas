<?php
if (isset($conexion)) {
    ?>
	<div id="nuevoProveedor" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"><i class='fa fa-edit'></i> Nuevo Proveedor</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" method="post" id="guardar_proveedor" name="guardar_proveedor">
						<div id="resultados_ajax"></div>

						<ul class="nav nav-tabs">
							<li class="nav-item">
								<a href="#empresa" data-toggle="tab" aria-expanded="false" class="nav-link active">
									Datos de la Empresa
								</a>
							</li>
							<li class="nav-item">
								<a href="#contacto" data-toggle="tab" aria-expanded="true" class="nav-link">
									Datos de Contacto
								</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="empresa">

								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="nombre" class="control-label">Razón Social:</label>
											<input type="text" class="form-control UpperCase" id="nombre" name="nombre" autocomplete="off" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="fiscal" class="control-label">RUC:</label>
											<input type="text" class="form-control" id="fiscal" name="fiscal" autocomplete="off" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="web" class="control-label">Web:</label>
											<input type="text" class="form-control" id="web" name="web" autocomplete="off">
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="direccion" class="control-label">Dirección:</label>
											<textarea class="form-control UpperCase"  id="direccion" name="direccion" maxlength="255" autocomplete="off"></textarea>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="rubro" class="control-label">Rubro:</label>
											<select class="form-control" id="rubro" name="rubro" required>
												<option value="">-- Selecciona --</option>
												<option value="Cuero" >Cuero</option>
												<option value="Hilo Encerado">Hilo Encerado</option>
												<option value="Hilo Chino" >Hilo Chino</option>
												<option value="Dijes y Cuentas" >Dijes y Cuentas</option>
												<option value="Resina" >Resina</option>
												<option value="Cristales" >Cristales</option>
												<option value="Packaging" >Packaging</option>
												<option value="Productos Terminados" >Prod. Terminados</option>
												<option value="Marketing Digital" >Marketing Digital</option>
												<option value="Diseño Grafico" >Diseño Gráfico</option>
												<option value="Informatica" >Informática</option>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="especialidad" class="control-label">Especialidad:</label>
											<input type="text" class="form-control" id="especialidad" name="especialidad" autocomplete="off">
										</div>
									</div>
								</div>

							</div>
							<div class="tab-pane fade" id="contacto">

								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="contacto" class="control-label">Nombre/Contacto:</label>
											<input type="text" class="form-control UpperCase" id="contacto" name="contacto" autocomplete="off" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="telefono" class="control-label">Telefono:</label>
											<input type="text" class="form-control" id="telefono" name="telefono" autocomplete="off">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8">
										<div class="form-group">
											<label for="encargado" class="control-label">Email:</label>
											<input type="email" class="form-control" id="email" name="email" autocomplete="off">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="estado" class="control-label">Estado:</label>
											<select class="form-control" id="estado" name="estado" required>
												<option value="">-- Selecciona --</option>
												<option value="1" selected>Activo</option>
												<option value="0">Inactivo</option>
											</select>
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="facebook" class="control-label">Facebook:</label>
											<input type="text" class="form-control" id="facebok" name="facebook" autocomplete="off">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="instagram" class="control-label">Instagram:</label>
											<input type="text" class="form-control" id="instagram" name="instagram" autocomplete="off">
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="twitter" class="control-label">Twitter:</label>
											<input type="text" class="form-control" id="twitter" name="twitter" autocomplete="off">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label for="tiktok" class="control-label">Tiktok:</label>
											<input type="text" class="form-control" id="tiktok" name="tiktok" autocomplete="off">
										</div>
									</div>
								</div>

							</div>
						</div>



					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Cerrar</button>
						<button type="submit" class="btn btn-primary waves-effect waves-light" id="guardar_datos">Guardar</button>
					</div>
				</form>
			</div>
		</div>
	</div><!-- /.modal -->
	<?php
}
?>