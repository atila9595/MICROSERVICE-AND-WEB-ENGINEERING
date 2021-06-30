package br.com.ps.PS13SI.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Controller;

import com.fasterxml.jackson.core.sym.Name;

@Entity
@Table(name = "EMPRESA")
public class EmpresaModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long id;
	
	@Column(name = "NOME_USER")
	private String nome;
	
	@Column(name = "NOME_EMPRESA")
	private String nomeEmpresa;
	
	@Column(name = "EMDERECO")
	private String endereco;
	
	@Column(name = "TELEFONE")
	private int tel;
	
	

	public EmpresaModel() {
		
	}



	public EmpresaModel(Long id, String nome, String nomeEmpresa, String endereco, int tel) {
		super();
		this.id = id;
		this.nome = nome;
		this.nomeEmpresa = nomeEmpresa;
		this.endereco = endereco;
		this.tel = tel;
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}


	@Size(min = 2, max = 50, message = "NOME deve ser entre 2 e 40 caracteres")
	public String getNome() {
		return nome;
	}



	public void setNome(String nome) {
		this.nome = nome;
	}


	@Size(min = 2, max = 50, message = "NOME DA EMPRESA deve ser entre 2 e 40 caracteres")
	public String getNomeEmpresa() {
		return nomeEmpresa;
	}



	public void setNomeEmpresa(String nomeEmpresa) {
		this.nomeEmpresa = nomeEmpresa;
	}


	@Size(min = 2, max = 50, message = "ENDEREÇO deve ser entre 2 e 40 caracteres")
	public String getEndereco() {
		return endereco;
	}



	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}



	public int getTel() {
		return tel;
	}



	public void setTel(int tel) {
		this.tel = tel;
	}
	
	
	
	
	

}
