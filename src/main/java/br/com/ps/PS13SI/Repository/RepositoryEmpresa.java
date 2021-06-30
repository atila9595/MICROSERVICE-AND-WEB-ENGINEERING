package br.com.ps.PS13SI.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.ps.PS13SI.model.EmpresaModel;

public interface RepositoryEmpresa extends JpaRepository<EmpresaModel, Long> {

}
