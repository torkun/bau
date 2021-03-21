package bal;


public class CICEK {

	private String Cins;
	private int PolenKapasitesi;
	private int BalOzuKapasitesi;
	private double Uzaklik;
	private int PolenMiktari;
	private int BalOzuMiktari;

	public CICEK(String Cins, int PolenKapasitesi, int BalOzuKapasitesi, double Uzaklik, int PolenMiktari, int BalOzuMiktari) {
		if (PolenKapasitesi < PolenMiktari || BalOzuKapasitesi < BalOzuMiktari) {
			System.out.println(Cins + " Cinsinde Hata!!" + " Polen ve BalOzu miktarlari Kapasitelerinden Fazla Olamaz!!");
		} else {
		this.Cins = Cins;
		this.PolenKapasitesi = PolenKapasitesi;
		this.BalOzuKapasitesi = BalOzuKapasitesi;
		this.Uzaklik = Uzaklik;
		this.PolenMiktari = PolenMiktari;
		this.BalOzuMiktari = BalOzuMiktari;
		}
	}
	
	public String getCins() {
		return Cins;
	}
	
	public void setCins(String Cins) {
		this.Cins = Cins;
	}
	
	public int getPolenKapasitesi() {
		return PolenKapasitesi;
	}
	
	public void setPolenKapasitesi(int PolenKapasitesi) {
		this.PolenKapasitesi = PolenKapasitesi;
	}
	
	public int getBalOzuKapasitesi() {
		return BalOzuKapasitesi;
	}
	
	public void setBalOzuKapasitesi(int BalOzuKapasitesi) {
		this.BalOzuKapasitesi = BalOzuKapasitesi;
	}
	
	public double getUzaklik() {
		return Uzaklik;
	}
	
	public void setUzaklik(double Uzaklik) {
		this.Uzaklik = Uzaklik;
	}
	
	public void PolenUret(){
		PolenMiktari = PolenKapasitesi;
		System.out.println("PolenUretimi Tamamlandi, Polen Miktari = " + PolenMiktari);
	}
	
	public void BalOzuUret(){
		BalOzuMiktari = BalOzuKapasitesi;
		System.out.println("Bal Ozu Uretimi Tamamlandi, Bal Ozu Miktari = " + BalOzuMiktari);
	}
	
	public void BalOzuKullan(int BalOzuMiktari) {
		this.BalOzuMiktari = this.BalOzuMiktari - BalOzuMiktari;
	}
	
	public void PolenKullan(int PolenMiktari) {
		this.PolenMiktari = this.PolenMiktari - PolenMiktari;
	}
	public int getPolenMiktari() {
		return PolenMiktari;
	}
	
	public int getBalOzuMiktari() {
		return BalOzuMiktari;
	}
	public String toString() {
		return "CICEK {" +
				"Cins: " + Cins +
				" PolenKapasitesi: " + PolenKapasitesi +
				" BalOzuKapasitesi: " + BalOzuKapasitesi +
				" Uzaklik: " + Uzaklik +
				" PolenMiktari: " + PolenMiktari +
				" BalOzuMiktari: " + BalOzuMiktari +
				"}" ;
	}
	
}
