package br.com.ps.PS13SI.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.ps.PS13SI.model.FaleConosco;

public interface RepositoryHome extends JpaRepository<FaleConosco, Long> {

}
