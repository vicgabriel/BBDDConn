package controladores;

import java.util.List;

import modelos.home;

public class test {

	public static void main(String[] args) {

		List<home> hom = FotoController.gethom();

		for (home g : hom) {
			System.out.println(g.getUrl() + " " + g.getUsi() + " " + g.getLikes());
		}
	}

}
