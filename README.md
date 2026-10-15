# StockFlow — Entrega 2: Arquitectura del producto

API REST para la gestión de inventario y pedidos de GlobalRetail S.A.
Desarrollo Web Orientado a Objeto — Universidad del Bío-Bío.

Integrantes: Diego Alonso Alamos Vallejos, Carlos Alberto Vásquez Rodríguez.

## Contenido de esta entrega

- **Base de datos** (`src/main/resources`):
  - `schema.sql`: creación de las tablas `productos`, `clientes`, `pedidos` y
    `detalles_pedido`, con claves primarias, foráneas y restricciones.
  - `data.sql`: datos de ejemplo.
- **Modelos** (`model`): entidades JPA `Producto`, `Cliente`, `Pedido`,
  `DetallePedido` y el enumerado `EstadoPedido`, mapeadas a las tablas del schema.
- **Repositorios** (`repository`): interfaces de Spring Data JPA de cada entidad.
- **Servicios y controladores** (`service`, `controller`): clases creadas según la
  arquitectura en capas. Su lógica y endpoints se implementarán en la siguiente etapa.

## Estructura

```
src/main/java/cl/ubb/stockflow
├── controller   ProductoController, ClienteController, PedidoController
├── service      ProductoService, ClienteService, PedidoService
├── repository   Acceso a datos (Spring Data JPA)
└── model        Entidades JPA
src/main/resources
├── application.properties
├── schema.sql   Creación de tablas
└── data.sql     Datos de ejemplo
```

## Relación entre modelos y base de datos

| Entidad | Tabla | Relaciones |
|---|---|---|
| `Producto` | `productos` | — |
| `Cliente` | `clientes` | — |
| `Pedido` | `pedidos` | `@ManyToOne` a `Cliente` (`cliente_id`), `@OneToMany` a `DetallePedido` |
| `DetallePedido` | `detalles_pedido` | `@ManyToOne` a `Pedido` (`pedido_id`) y a `Producto` (`producto_id`) |

Al iniciar, Hibernate valida (`ddl-auto=validate`) que las entidades coincidan con las
tablas creadas por `schema.sql`.

## Ejecución

Requisitos: Java 21 o superior y PostgreSQL (o Docker para usar `compose.yaml`).
No es necesario instalar Maven: el proyecto incluye el Maven Wrapper.

```bash
docker compose up -d          # Levanta PostgreSQL (base, usuario y clave: stockflow)
./mvnw spring-boot:run        # Linux / macOS
mvnw.cmd spring-boot:run      # Windows
```

Si se usa un PostgreSQL propio, se puede indicar la conexión con las variables
`DB_URL`, `DB_USERNAME` y `DB_PASSWORD`. Los scripts también pueden ejecutarse
directamente:

```bash
psql -U stockflow -d stockflow -f src/main/resources/schema.sql
psql -U stockflow -d stockflow -f src/main/resources/data.sql
```

Al iniciar la aplicación, `schema.sql` recrea las tablas y `data.sql` carga los datos
de ejemplo, por lo que la base de datos se reinicia en cada ejecución.
