package modele;

import javafx.beans.property.DoubleProperty;
import javafx.beans.property.FloatProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
import javafx.beans.property.SimpleDoubleProperty;

public class ArticlesTV {
	private StringProperty codeCat;
	private StringProperty codeProd;
	private StringProperty codeTVA;
	private StringProperty descProd;
	private StringProperty nomProd;
	//private Blob photoLargeProd;
	//private Blob photoTinyProd;
	private DoubleProperty PrixHT;
	private DoubleProperty PrixTTC;
	
	public ArticlesTV(String coCat, String coProd, String coTva, String deProd, String noProd, double pxHt, double pxTtc) {
		 codeCat = new SimpleStringProperty(coCat);
		 codeProd = new SimpleStringProperty(coProd);
		 codeTVA = new SimpleStringProperty(coTva);
		 descProd = new SimpleStringProperty(deProd);
		 nomProd = new SimpleStringProperty(noProd);
		 PrixHT = new SimpleDoubleProperty(pxHt);
		 PrixTTC = new SimpleDoubleProperty(pxTtc);
	}
	
	public String getCodeCat() {
		return codeCat.get();
	}
	
	public void setCodeCat(String coCat) {
		codeCat.set(coCat);
	}
	
	public String getCodeProd() {
		return codeProd.get();
	}
	
	public void setCodeProd(String coProd) {
		codeCat.set(coProd);
	}
	
	public String getCodeTVA() {
		return codeTVA.get();
	}
	
	public void setCodeTVA(String coTva) {
		codeCat.set(coTva);
	}
	
	public String getDescProd() {
		return descProd.get();
	}
	
	public void setDescProd(String deProd) {
		descProd.set(deProd);
	}
	
	public String getNomProd() {
		return nomProd.get();
	}
	
	public void setNomProd(String noProd) {
		nomProd.set(noProd);
	}
	
	public Double getPrixHT() {
		return PrixHT.get();
	}
	
	public void setPrixHT(double pxHt) {
		PrixHT.set(pxHt);
	}
	
	public Double getPrixTTC() {
		return PrixTTC.get();
	}
	
	public void setPrixTTC(double pxTtc) {
		PrixTTC.set(pxTtc);
	}
}
