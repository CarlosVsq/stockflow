package cl.ubb.stockflow.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.ubb.stockflow.model.DetallePedido;

@Repository
public interface DetallePedidoRepository extends JpaRepository<DetallePedido, Long> {
}
