-- Las variables de declaran e inicializan en la seccion DECLARE del bloque PL/SQL
  -- DECLARE va antes del bloque BEGIN
  -- Si se usa una variable en el bloque, es obligatorio ponerla en la zona de declaracion
  -- Pueden almacenar valores devueltos por otros programas PL/SQL
  
  -- La sintaxis para declarar variables es
  -- nombreVariable tipo
  -- Para inicializar una variable se usa :=
SET SERVEROUTPUT ON

DECLARE
    salary         NUMBER(3) := 100;
    prime          NUMBER(2);
    name_          VARCHAR2(100) := 'Saul';
    lastname       VARCHAR2(100);
    birth_date     DATE := '16-jun-1989';
    
    -- LA CONSTANTE NO SE PUEDE MODIFICAR Y SE DEBE INICIALIZAR CUANDO SE DECLARA
    nacionalidad   CONSTANT VARCHAR2(30) := 'Mexicano';
    
    -- NOT NULL INDICA QUE LA VARIABLE NO PUEDE ESTAR VACÍA
    z              NUMBER NOT NULL := 20;
    
BEGIN
    lastname := 'Baez';
    name_ := 'Saúl';
    dbms_output.put_line(name_);
    dbms_output.put_line(lastname);
    dbms_output.put_line(name_
                         || ' '
                         || lastname);
    dbms_output.put_line(nacionalidad);
END;