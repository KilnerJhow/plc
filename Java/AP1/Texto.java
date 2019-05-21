
public class Texto {
	
	private String texto;
	
	public Texto (String texto) {
		this.texto = texto;
	}

	public int contarPalavras() {
		int total = 0;
		
		char ch[] = new char [this.texto.length()];
		
		for(int i = 0; i < this.texto.length(); i++) {
			
			ch[i]= this.texto.charAt(i);  
        
			if( ((i>0) && (ch[i]!=' ') && (ch[i-1]==' ')) || ((ch[0]!=' ') && (i==0)) )  
                total++;  
		}
		
		return total;
	}
	
	public void substituirPalavra (String search, String toReplace) {
		
		this.texto.replaceAll(search, toReplace);
	}
	
	public int qntdVezes(String str) {
		int total = 0;
		String aux = this.texto;
	
		int i = 1, j, k = 0;
		
		while(i > 0) {
			j = aux.indexOf(str, k);
			if(j >= 0) {
				total++;
				k = j + 1;
			} else {
				i = -1;
			}
				
		}
		
		return total;
	}
	
	public static void main(String[] args) {
		String a = "Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit";		
		String str = "Lorem";
		String aux = a;
		int total = 0;
		int i = 1, j, k = 0;
		
		while(i > 0) {
			j = aux.indexOf(str, k);
			if(j >= 0) {
				total++;
				k = j + 1;
			} else {
				i = -1;
			}
				
		}
		
		System.out.println(total);
		
	}
	
	
}
