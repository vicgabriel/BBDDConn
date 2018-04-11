package modelos;

public class home {

	private int id;
	private String Usuario;
	private String url;
	private int likes;
	
	private int usi;
	
	public home(int id, String Usuario, String url, int likes) {
		this.id = id;
		this.Usuario = Usuario;
		this.url = url;
		this.likes = likes;
	}
	
	public home(int id, int usi, String url, int likes) {
		this.id = id;
		this.usi = usi;
		this.url = url;
		this.likes = likes;
	}

	public int getId() {
		return id;
	}

	public String getUsuario() {
		return Usuario;
	}

	public String getUrl() {
		return url;
	}

	public int getLikes() {
		return likes;
	}

	public int getUsi() {
		return usi;
	}

}
