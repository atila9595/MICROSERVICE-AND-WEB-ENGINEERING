package br.com.ps.PS13SI.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FALE_CONOSCO")
public class FaleConosco {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long id;
	
	@Column(name = "EMAIL")
	private String email;
	
	@Column(name = "ASSUNTO")
	private String assunto;
	
	@Column(name = "MENSSAGEM")
	private String menssagem;

	public FaleConosco() {
		
	}
 
	public FaleConosco(Long id, String email, String assunto, String menssagem) {
		super();
		this.id = id;
		this.email = email; 
		this.assunto = assunto;
		this.menssagem = menssagem;
	}  
 
	public Long getId() {
		return id;
	} 

	public void setId(Long id) {
		this.id = id; 
	} 

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
 
	public String getAssunto() {
		return assunto;
	}

	public void setAssunto(String assunto) {
		this.assunto = assunto;
	}

	public String getMenssagem() {
		return menssagem; 
	}

	public void setMenssagem(String menssagem) {
		this.menssagem = menssagem;
	}

	@Override
	public String toString() {
		return "FaleConosco [id=" + id + ", email=" + email + ", assunto=" + assunto + ", menssagem=" + menssagem + "]";
	}
	
	
	
	

}
