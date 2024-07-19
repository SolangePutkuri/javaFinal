
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionMysql {
    // Declaramos una variable de tipo Connection para almacenar la conexión a la base de datos
    private Connection cn;

    // Método que establece la conexión a la base de datos
    public Connection conectar() {
        try {
            // Cargamos el driver de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establecemos la conexión a la base de datos utilizando la URL, el usuario y la contraseña
            cn = DriverManager.getConnection("jdbc:mysql://localhost/nombredelabasededatos", "root", "");
            // Imprimimos un mensaje indicando que la conexión fue exitosa
            System.out.println("CONECTADO");
        } catch (ClassNotFoundException e) {
            // Manejo de la excepción si el driver de MySQL no se encuentra
            System.out.println("ERROR: No se encontró el driver de MySQL.");
            e.printStackTrace();
        } catch (SQLException e) {
            // Manejo de la excepción si ocurre un error al conectar a la base de datos
            System.out.println("ERROR DE CONEXIÓN BD: " + e.getMessage());
            e.printStackTrace();
        }
        // Retornamos la conexión establecida
        return cn;
    }
}

public class TestConexion {
    public static void main(String[] args) {
        ConexionMysql conexion = new ConexionMysql();
        Connection cn = conexion.conectar();

        if (cn != null) {
            System.out.println("Conexión establecida correctamente.");
        } else {
            System.out.println("Fallo al establecer la conexión.");
        }
    }
}


