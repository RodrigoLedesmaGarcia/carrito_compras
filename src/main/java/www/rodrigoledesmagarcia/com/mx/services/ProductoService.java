package www.rodrigoledesmagarcia.com.mx.services;

import www.rodrigoledesmagarcia.com.mx.models.Producto;

import java.util.List;
import java.util.Optional;

public interface ProductoService {
    List<Producto> listar();
    Optional<Producto> porId(Long id);
}
