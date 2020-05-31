package application;
	
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;

// Pour se connecter à la base de données
import java.sql.*;

//private Connection connection = null;

public class Main extends Application {
	
	public static Connection connection = null;
	
	private boolean ouvrirConnection() {
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Ok pour le driver");
			//connection = DriverManager.getConnection("jdbc:mysql://192.168.56.1/vente_a_emporter","root","");
		}
		catch (ClassNotFoundException err)
		{
			System.err.println("Pilote non trouvé..");
			System.err.println(err);
			return false;
		}
		
		try
		{
			connection = DriverManager.getConnection("jdbc:mysql://192.168.56.1/vente_a_emporter","root","");
			System.out.println("Ok pour la base");
		}
		catch (SQLException err)
		{
			System.err.println("Connexion impossible");
			System.err.println(err);
			return false;
		}
		return true;
	}
	
	@Override
	public void start(Stage primaryStage) {
		try {
			// Connexion à la base de données
			boolean connOk = false;
			connOk = ouvrirConnection();
			if (!connOk)
			{
				System.out.println("La connexion est impossible !!");
				System.exit(1);
			}
		
			// Afficher la fenetre principale
			FXMLLoader loader = new FXMLLoader();
			loader.setLocation(Main.class.getResource("../vue/vuePrincipale.fxml"));
			
			GridPane rootLayout = (GridPane) loader.load();
			Scene scene = new Scene(rootLayout,400,400);
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setTitle("Application RESTO DRIVE");
			primaryStage.setScene(scene);
			primaryStage.show();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
