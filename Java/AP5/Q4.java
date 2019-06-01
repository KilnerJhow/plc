interface Colecao {
    void inserir(Pessoa p);
    int tamanhoColecaoNaoNull();
}

abstract class Pessoa {
    protected String nome;
    protected String cpf;

    abstract void setNome(String nome);

    abstract void setCPF(String cpf);

    public String getCPF() {
        return this.cpf;
    }

    public String getNome() {
        return this.nome;
    }
}

class ColecaoVetor implements Colecao {

    protected Pessoa [] dados = new Pessoa [5];
    private int indice = 0;

    @Override
    public void inserir(Pessoa p) {
        if(indice < 5) {
            dados[indice] = p;
            indice ++;
        }
    }

    @Override
    public int tamanhoColecaoNaoNull() {
        int indiceNull = 0;
        for (int i = 0; i < 5 ; i++) {
            if(dados[i] == null) indiceNull++;
        }
        return indiceNull;
    }


}

class Aluno extends Pessoa {
    protected String matricula;
    protected String curso;

    public Aluno(String nome, String cpf, String matricula, String curso) {
        this.matricula = matricula;
        this.curso = curso;
        super.nome = nome;
        super.cpf = cpf;
    }


    @Override
    public void setNome(String nome) {
        super.nome = nome;
    }

    @Override
    public void setCPF(String cpf) {
        super.cpf = cpf;
    }

}

class Professor extends Pessoa {
    protected String formacao;
    protected String area;

    public Professor(String nome, String cpf, String formacao, String area) {
        this.formacao = formacao;
        this.area = area;
        super.nome = nome;
        super.cpf = cpf;
    }

    @Override
    public void setNome(String nome) {
        super.nome = nome;
    }

    @Override
    public void setCPF(String cpf) {
        super.cpf = cpf;
    }
}

class Principal {

    public static void main(String[] args) {

        ColecaoVetor cv = new ColecaoVetor();

        System.out.println(cv.tamanhoColecaoNaoNull());

        cv.inserir(new Professor ("Juliano", "033", "TE", "Doutor"));
        System.out.println(cv.dados[0].getNome());
        System.out.println(cv.tamanhoColecaoNaoNull());
            
        cv.inserir(new Aluno ("Juliano2", "033", "TE", "Doutor"));
        System.out.println(cv.dados[1].getNome());
        cv.dados[1].setNome("Roberto");
        System.out.println(cv.tamanhoColecaoNaoNull());
        
        Professor ProfessorTeste = new Professor ("Juliano3", "033", "TE", "Doutor");
        cv.inserir(ProfessorTeste);
        System.out.println(cv.dados[1].getNome());
        ProfessorTeste.setNome("RobertoSemColocarNoArray");
        System.out.println(ProfessorTeste.getNome());
        System.out.println(cv.dados[2].getNome());
        System.out.println(cv.tamanhoColecaoNaoNull());

    }

}