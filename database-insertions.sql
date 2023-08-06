INSERT INTO client (FName, Minit, Lname, CPF, Address)
VALUES
  ('John', 'A', 'Doe', '12345678901', '123 Main St'),
  ('Jane', 'B', 'Smith', '98765432109', '456 Oak Ave');


INSERT INTO product (PName, classification_kids, category, avaliação, size)
VALUES
  ('Laptop', false, 'Eletrônicos', 4.5, '15-inch'),
  ('T-Shirt', true, 'Vestuários', 3.8, 'Medium');


INSERT INTO payments (idclient, idPayment, typePayment, limitAvailable)
VALUES
  (1, 101, 'Boleto', 500.0),
  (1, 102, 'Cartão', 1000.0),
  (2, 103, 'PIX', 800.0);


INSERT INTO orders (idOrderClient, OrderStatus, OrderDescription, sendValue, paymentCash)
VALUES
  (1, 'Confirmado', 'Order #1001', 15.0, false),
  (2, 'Em processamento', 'Order #1002', 12.5, true);


INSERT INTO productStorage (storageLocation, quantity)
VALUES
  ('Warehouse A', 100),
  ('Warehouse B', 50);


INSERT INTO supplier (SocialName, CNPJ, contact)
VALUES
  ('ABC Electronics', '12345678901234', '98765432101'),
  ('XYZ Clothing', '56789012345678', '11122233344');


INSERT INTO seller (SocialName, AbstName, CNPJ, CPF, location, contact)
VALUES
  ('John Doe Store', 'JDS', '55555555555', '12345678901', 'Main St, City', '99988877766'),
  ('Jane Smith Shop', 'JSS', '77777777777', '98765432109', 'Oak Ave, Town', '11122233344');


INSERT INTO productSeller (idPseller, idProduct, prodQuantity)
VALUES
  (1, 1, 10),
  (1, 2, 20),
  (2, 2, 15);


INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus)
VALUES
  (1, 1, 5, 'Disponível'),
  (1, 2, 8, 'Sem Estoque'),
  (2, 2, 10, 'Disponível');


INSERT INTO storageLocation (idLproduct, idLstorage, location)
VALUES
  (1, 1, 'Shelf A1'),
  (1, 2, 'Shelf B2'),
  (2, 1, 'Shelf C3');


INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity)
VALUES
  (1, 1, 50),
  (1, 2, 100),
  (2, 2, 70);
