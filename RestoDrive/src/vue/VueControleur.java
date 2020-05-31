package vue;

import java.io.IOException;

import application.Main;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;

public class VueControleur {
	@FXML
	private Button buttClients;
	@FXML
	private Button buttCommandes;
	@FXML
	private Button buttArticles;
	
	private void ouvreFenetre (String cheminFenetre)
	{
		System.out.println("Ouverture de la fenetre" + cheminFenetre);
		//Parent root;
	    try {
            //FXMLLoader.load(getClass().getClassLoader().getResource("path/to/other/view.fxml"), resources);
	    	FXMLLoader loader = new FXMLLoader();
	    	
	    	loader.setLocation(Main.class.getResource(cheminFenetre));
	    	
	    	GridPane vueLayout = (GridPane) loader.load();
			
			Scene scene = new Scene(vueLayout,400,400);
            Stage stage = new Stage();
            stage.setTitle("Application RESTO DRIVE");
            stage.setScene(scene);
            stage.show();
            
            // Hide this current window (if this is what you want)
            //((Node)(event.getSource())).getScene().getWindow().hide();
	    }
	    catch (IOException e)
	    {
	    	e.printStackTrace();
	    }
	}
	
	@FXML
	private void ouvreFenetreClients() {
		ouvreFenetre("../vue/vueClients.fxml");
	}
	
	@FXML
	private void ouvreFenetreCommandes() {
		ouvreFenetre("../vue/vueCommandes.fxml");
	}
	
	@FXML
	private void ouvreFenetreArticles() {
		ouvreFenetre("../vue/vueArticles.fxml");
	}    	
}
