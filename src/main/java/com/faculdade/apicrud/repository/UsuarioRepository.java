package com.faculdade.apicrud.repository;


import com.faculdade.apicrud.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    // Já herda todos os métodos CRUD (findAll, findById, save, deleteById, etc.)
}

