package modelos;

import java.util.List;

import Controladores.FotoController;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		List<home> hom = FotoController.gethom();
		
		System.out.println("hola");
		
		for (home g : hom) {
			System.out.println(g.url);
		}
		
	}

}
