package bal;
import java.util.ArrayList;

public class BAL {

static	ArrayList<CICEK> ciceklistesi = new ArrayList<CICEK>();
// Veriler
static	CICEK Cam = new CICEK("Cam", 80, 60, 4.6, 80, 60);
static	CICEK Papatya = new CICEK("Papatya", 90, 40, 150, 90, 70);
static	CICEK Kestane = new CICEK("Kestane", 60, 20, 70, 60, 20);

static	ARI Balarisi = new ARI("Balarisi", 15, 5, 2.3, true);
static	ARI Esekarisi = new ARI("Esekarisi", 0, 20, 4, false);
// Main Metod
	public static void main(String[] args) {

//Array Ekleme
	ciceklistesi.add(0,Cam);
	ciceklistesi.add(1,Papatya);
	ciceklistesi.add(2,Kestane);

System.out.println();
//Array Yazdirma
	for (int i = 0; i < ciceklistesi.size(); i++) {
		System.out.println(ciceklistesi.get(i));		
	}

System.out.println();

// BalYap Metodunu Cagirma
	BalYap(Balarisi, Cam);

System.out.println();

Cam.BalOzuUret();
Cam.PolenUret();
System.out.println("Balarisi Hizi: " + Balarisi.getHizi() + "km/saat'dir.");
Papatya.setCins("Papatya");
Papatya.setBalOzuKapasitesi(30);
Papatya.setPolenKapasitesi(120);
Papatya.setUzaklik(200);
Papatya.BalOzuUret();
Papatya.PolenUret();
System.out.println(Papatya.toString());

System.out.println();
BalYap(Balarisi, Papatya);
System.out.println();
BalYap(Esekarisi, Papatya) ;


	}
	
	public static void BalYap(ARI aricinsi, CICEK cicekcinsi) {

		if (aricinsi.getBalYapabilme() ==! true) {
			System.out.println(aricinsi.getCins() + " Turu Bal Yapamaz!!");
		
		}
		else if (cicekcinsi.getBalOzuMiktari() < aricinsi.getBalOzuTasimaKapasitesi() || cicekcinsi.getPolenMiktari() < aricinsi.getPolenTasimaKapasitesi()) {
			System.out.println("Sectiginiz Cicekte Yeterli Kaynak Yok!!");
		}
		else {
			cicekcinsi.BalOzuKullan(aricinsi.getBalOzuTasimaKapasitesi());
			cicekcinsi.PolenKullan(aricinsi.getPolenTasimaKapasitesi());
			int sure = 0;
			sure = (int) (cicekcinsi.getUzaklik() / aricinsi.getHizi() * 60);
			System.out.println(cicekcinsi.getCins() + " Bali Yapildi, Toplam Sure: " + sure + " dk");
			System.out.println("Cicekte Kalan Polen Miktari: " + cicekcinsi.getPolenMiktari());
			System.out.println("Cicekte Kalan BalOzu Miktari: " + cicekcinsi.getBalOzuMiktari());
		}
	}	

}
