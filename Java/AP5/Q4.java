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

        return indice;
    }


}

class Aluno extends Pessoa {
    protected String matricula;
    protected String curso;

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
    }

}