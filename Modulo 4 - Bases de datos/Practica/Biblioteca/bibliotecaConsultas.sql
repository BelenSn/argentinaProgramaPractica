# trae la tabla libro con la union de la tabla fotos
# busca la union de ambas 
SELECT * 
FROM biblioteca.libro AS L
INNER JOIN biblioteca.fotos AS F 
ON L.id = F.libro_id;    
    
# trae toda la tabla de libro  mas las fotos que coinciden con los libros
# solo las fotos que coinciden con los libros
SELECT * 
FROM biblioteca.libro AS L
LEFT JOIN biblioteca.fotos AS F 
ON L.id = F.libro_id;
    
# trae el titulo del libro con su foto y 
# libro sin foto tambien trae
SELECT L.titulo, F.nombre AS foto 
FROM biblioteca.libro AS L
LEFT JOIN biblioteca.fotos AS F 
ON L.id = F.libro_id;

# trae la tabla fotos y su titulo
SELECT L.titulo, F.nombre AS foto 
FROM biblioteca.fotos AS F
LEFT JOIN biblioteca.libro AS L 
ON L.id = F.libro_id;