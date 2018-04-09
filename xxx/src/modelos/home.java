package modelos;

public class home {

	public int id;
	public String Usuario;
	public String url;
	public int likes;
	
	public home(int id, String Usuario, String url, int likes) {
		super();
		this.id = id;
		this.Usuario = Usuario;
		this.url = url;
		this.likes = likes;
	}
	
	public home(String Usuario, String url, int likes) {
		super();
		this.id = 0;
		this.Usuario = Usuario;
		this.url = url;
		this.likes = likes;
	}
}
