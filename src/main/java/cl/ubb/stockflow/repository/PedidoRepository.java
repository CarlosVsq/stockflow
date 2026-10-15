package cl.ubb.stockflow.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.ubb.stockflow.model.Pedido;

@Repository
public interface PedidoRepository extends JpaRepository<Pedido, Long> {
}
