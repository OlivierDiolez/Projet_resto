package vue;

import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import modele.ArticlesTV;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import java.sql.*;
import application.Main;

public class VueControleurArticles {
	
	/*private final ObservableList<ArticlesTV> data =
			 FXCollections.observableArrayList(
					 new ArticlesTV("ABC", "Jam2314","1", "Jambon de qualité","Jambon",2.30d,3.25d),
					 new ArticlesTV("ADE", "Doc2021","2", "Entrecôte milanaise","Entrecôte",12.00d,15.30d),
					 new ArticlesTV("DFE", "Cre2104","3", "Crêpe nutella banane","crepeNB",2.30d,2.60d),
					 new ArticlesTV("FDA", "Cre1212","2", "Crêpe flambée au grand marnier","crepeF",3.60d,5.60d),
					 new ArticlesTV("ACD", "Gal3030","1", "Galette complète","galcom",2.65d,3.65d)); */
	
	private ObservableList<ArticlesTV> data = FXCollections.observableArrayList();
	
	@FXML
	private TableView<ArticlesTV> listeArticles = new TableView<ArticlesTV>();
	
	@FXML
	private void initialize() {
				
		System.out.println("Initialisation");
		TableColumn<ArticlesTV,String> catCol = new TableColumn<ArticlesTV,String>("Code Catégorie");
		TableColumn<ArticlesTV,String> codCol = new TableColumn<ArticlesTV,String>("Code Produit");
		TableColumn<ArticlesTV,String> tvaCol = new TableColumn<ArticlesTV,String>("Code TVA");
		TableColumn<ArticlesTV,String> dscCol = new TableColumn<ArticlesTV,String>("Description");
		TableColumn<ArticlesTV,String> nomCol = new TableColumn<ArticlesTV,String>("Nom");
		TableColumn<ArticlesTV,Double> phtCol = new TableColumn<ArticlesTV,Double>("Prix HT");
		TableColumn<ArticlesTV,Double> pttCol = new TableColumn<ArticlesTV,Double>("Prix TTC");
		
		catCol.setCellValueFactory(new PropertyValueFactory<ArticlesTV,String>("codeCat"));
		codCol.setCellValueFactory(new PropertyValueFactory<ArticlesTV,String>("codeProd"));
		tvaCol.setCellValueFactory(new PropertyValueFactory<ArticlesTV,String>("codeTVA"));
		dscCol.setCellValueFactory(new PropertyValueFactory<ArticlesTV,String>("descProd"));
		nomCol.setCellValueFactory(new PropertyValueFactory<ArticlesTV,String>("nomProd"));
		phtCol.setCellValueFactory(new PropertyValueFactory<ArticlesTV,Double>("PrixHT"));
		pttCol.setCellValueFactory(new PropertyValueFactory<ArticlesTV,Double>("PrixTTC"));
		
		// Exécuter une requete sur la table articles
		Statement stat = null;
		try
		{
			stat = Main.connection.createStatement();
		}
		catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}  
		
		ResultSet rs = null;
		try
		{
			rs = stat.executeQuery("SELECT * FROM article");
		}
		catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
		
		try
		{
			while (rs.next()) {
				String codPrd = rs.getString("CodeProd");
				String nomPrd = rs.getString("NomProduit");
				String dscPrd = rs.getString("DescriptionProd");
				String codTva = rs.getString("CodeTVA");
				String codCat = rs.getString("codeCat");
				Double prxHtx = rs.getDouble("PrixHT");
				Double prxTtc = rs.getDouble("PrixTTC");
				System.out.println("Code: " + codPrd + " Description: " + dscPrd + " Prix HT: "+ prxHtx + "Prix TTC: " + prxTtc);
				data.add(new ArticlesTV(codCat, codPrd, codTva, dscPrd, nomPrd, prxHtx, prxTtc));
			}
		}
		catch (SQLException e) 
		{
			System.err.println("SQLException: " + e.getMessage());
		}
		
		listeArticles.setItems(data);
		 
		listeArticles.getColumns().addAll(catCol, codCol, tvaCol, dscCol, nomCol, phtCol, pttCol);
		 
		//table.setEditable(true);
	}
}
