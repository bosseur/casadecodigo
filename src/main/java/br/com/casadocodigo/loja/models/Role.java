package br.com.casadocodigo.loja.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.security.core.GrantedAuthority;

@Entity
public class Role implements Serializable, GrantedAuthority{
	

	private static final long serialVersionUID = 1L;
	
	@Id
    private String nome;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Role other = (Role) obj;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Role [nome=");
		builder.append(nome);
		builder.append("]");
		return builder.toString();
	}

	@Override
	public String getAuthority() {
		return this.nome;
	}
    
	
    
}
