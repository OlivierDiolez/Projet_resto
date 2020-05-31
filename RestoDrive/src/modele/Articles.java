package modele;

public class Articles {
	private String codeCat;
	private String codeProd;
	private String codeTVA;
	private String descProd;
	private String nomProd;
	//private Blob photoLargeProd;
	//private Blob photoTinyProd;
	private double PrixHT;
	private double PrixTTC;
	
	public Articles(String coCat, String coProd, String coTva, String deProd, String noProd, float pxHt, float pxTtc) {
		codeCat = coCat;
		codeProd = coProd;
		codeTVA = coTva;
		descProd = deProd;
		nomProd = noProd;
		PrixHT = pxHt;
		PrixTTC = pxTtc;
	}
	
	public String getCodeProd() {
		return codeProd;
	}
	
	public void setCodeProd(String coProd) {
		codeProd = coProd;
	}
	
	public String getDescProd() {
		return descProd;
	}
	
	public void setDescProd(String deProd) {
		descProd = deProd;
	}
}
