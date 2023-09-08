** Orden de las clases 
** Clases base, todas aquellas que no llevan llave foranea
** Clases Sub, todas aquellas que llevan llave primaria


-- Clases base (6)
Usuario (Arriola)
Login (Arriola)
Proveedores (Ambrocio)
Categoria Producto (yojhan)
Cliente (Cefe)
Establecimiento (Escriba)


-- Clases Sub (8)
Producto (Flores)
Compra (Chanquin)
Detalle Compra (Chamale)
Venta (Jonathan)
Detalle Venta (Chuquiej)
Pedido Cliente (Gary)
Pedido Proveedor (Galicia)
Inventario (Joao)

** Detalles de las clases, sus atributos 

-- Usuario 
nombre 
apellido
usuario 
contraseña 
(si se puede foto)

-- Login
usuario 
contraseña

-- Proveedores 
id 
nombre 
direccion 
telefono 

-- Producto
id 
nombre
descripcion
precio 
id proveedor
id categoria 
stock 


-- Categoria de producto 
id 
nombre 
descripcion 
fecha de creacion 

-- Compra
id 
id proveedor 
fecha 
total

-- Detalle compra 
id 
id compra
id proveedor 
id producto
cantidad

-- Cliente 
id 
nombre 
apellido 
direccion
telefono 

-- Venta 
id  
id cliente
fecha 
total

-- Detalle venta 
id 
id producto 
cantidad 

-- Pedido cliente
id
id cliente
id producto
cantidad 
total 
fecha 
estado

-- Pedido proveedor
id
id proveedor
id producto
cantidad 
total 
fecha 
estado 

-- Establecimiento 
id 
nombre
direccion 
telefono 

-- Inventario
id 
nombreInventario
id establecimiento 
id producto 
stock
