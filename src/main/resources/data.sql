-- StockFlow: datos iniciales de ejemplo

INSERT INTO productos (nombre, descripcion, categoria, precio, stock, stock_minimo, activo) VALUES
('Notebook Lenovo IdeaPad 3', 'Notebook 15.6", Ryzen 5, 8GB RAM, 512GB SSD', 'Computadores', 549990, 12, 5, TRUE),
('Mouse Inalámbrico Logitech M185', 'Mouse inalámbrico USB, 1000 DPI, color negro', 'Accesorios', 12990, 2, 10, TRUE),
('Teclado Mecánico Redragon Kumara', 'Teclado mecánico TKL, switches rojos', 'Accesorios', 34990, 18, 8, TRUE),
('Monitor Samsung 24" FHD', 'Monitor 24", 1920x1080, 75Hz', 'Monitores', 129990, 3, 4, TRUE),
('Audífonos Sony WH-CH520', 'Audífonos Bluetooth on-ear', 'Audio', 44990, 25, 6, TRUE),
('Disco SSD Kingston 1TB', 'SSD NVMe M.2 1TB', 'Almacenamiento', 59990, 9, 5, TRUE),
('Webcam Logitech C270', 'Webcam HD 720p', 'Accesorios', 24990, 1, 5, TRUE),
('Parlante JBL Go 3', 'Parlante Bluetooth portátil', 'Audio', 29990, 0, 3, FALSE);

INSERT INTO clientes (rut, nombre, correo, telefono, direccion, activo) VALUES
('12.345.678-5', 'María González Pérez', 'maria.gonzalez@gmail.com', '+56 9 8765 4321', 'Av. Collao 1202, Concepción', TRUE),
('15.678.234-K', 'Juan Muñoz Soto', 'jmunoz@outlook.com', '+56 9 7123 4567', 'O''Higgins 450, Concepción', TRUE),
('18.234.567-2', 'Camila Rojas Díaz', 'camila.rojas@gmail.com', '+56 9 6234 5678', 'Colón 3300, Talcahuano', TRUE),
('9.876.543-1', 'Pedro Fuentes Vera', 'pfuentes@empresa.cl', '+56 9 5345 6789', 'Los Carrera 820, Chillán', TRUE),
('20.123.456-7', 'Valentina Torres Lagos', 'vtorres@gmail.com', '+56 9 4456 7890', 'Av. Alemania 150, Los Ángeles', TRUE),
('16.789.012-3', 'Diego Contreras Silva', 'dcontreras@yahoo.com', '+56 9 3567 8901', 'Freire 1050, Concepción', FALSE);
