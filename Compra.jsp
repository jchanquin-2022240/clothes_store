<%-- 
    Document   : Compra
    Created on : 21/07/2023, 04:51:30 PM
    Author     : RODRIGO MAC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Compra</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Compra" method="POST">
                        
                        <div class="form-group">
                            <label>Id Compra</label>
                            <input type="text" value="${compra.getIdCompra()}" name="txtIdCompra" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Id Proveedor</label>
                            <input type="text" value="${compra.getIdProveedor()}" name="txtIdProveedor" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Fecha</label>
                            <input type="text" value="${compra.getFecha()}" name="txtFecha" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Total</label>
                            <input type="text" value="${compra.getTotal()}" name="txtTotal" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info" href="">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success" href="">
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hober">
                    <thead>
                        <tr>
                            <td>IdCompra</td>
                            <td>IdProveedor</td>
                            <td>Fecha</td>
                            <td>Total</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="compra" items="${compra}">
                        <tr>
                            <td>${compra.getIdCompra()}</td>
                            <td>${compra.getIdProveedor()}</td>
                            <td>${compra.getFecha()}</td>
                            <td>${compra.getTotal()}</td>
                            <td>
                                <a class="btn btn-warning" href="Controlador?menu=compra&accion=Editar&IdCompra=${compra.getIdcompra()}">Editar</a>
                                <a class="btn btn-danger" href="">Eliminar</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>            
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>

