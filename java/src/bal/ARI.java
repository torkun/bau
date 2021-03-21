package bal;

public class ARI {

	private String Cins;
	private int PolenTasimaKapasitesi;
	private int BalOzuTasimaKapasitesi;
	private double Hizi;
	private boolean BalYapabilme;
	
	public ARI(String Cins, int PolenTasimaKapasitesi, int BalOzuTasimaKapasitesi, double Hizi, boolean BalYapabilme) {
		
			this.Cins = Cins;
			this.PolenTasimaKapasitesi = PolenTasimaKapasitesi;
			this.BalOzuTasimaKapasitesi = BalOzuTasimaKapasitesi;
			this.Hizi = Hizi;
			this.BalYapabilme = BalYapabilme;
	}
	
	public String getCins() {
		return Cins;
	}

	public void setCins(String Cins) {
		this.Cins = Cins;
	}
	
	public int getPolenTasimaKapasitesi() {
		return PolenTasimaKapasitesi;
		
	}
	
	public void setPolenTasimaKapasitesi(int PolenTasimaKapasitesi) {
		this.PolenTasimaKapasitesi = PolenTasimaKapasitesi;
		
	}
	
	public int getBalOzuTasimaKapasitesi() {
		return BalOzuTasimaKapasitesi;
	}
	
	public void setBalOzuTasimaKapasitesi(int BalOzuTasimaKapasitesi) {
		
		this.BalOzuTasimaKapasitesi = BalOzuTasimaKapasitesi;
		
	}
	
	public double getHizi() {
		return Hizi;
	}
	
	public void setHizi(int Hizi) {
		this.Hizi = Hizi;
	}
	
	public boolean getBalYapabilme() {
		return BalYapabilme;
	}
	
	public void setBalYapabilme(boolean BalYapabilme) {
		this.BalYapabilme = BalYapabilme;
	}
	public String toString() {
		return  "ARI {" +
				"Cinsi: " + Cins +
				" PolenTasimaKapasitesi: " + PolenTasimaKapasitesi +
				" BalOzuTasimaKapasitesi: " + BalOzuTasimaKapasitesi +
				" Hizi: " + Hizi +
				"}";
	}
	
}
