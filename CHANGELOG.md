# Changelog

## 1.1.3 — 2026-09-22

- Mejora de contraste y legibilidad de textos secundarios sobre fondo negro.
- Etiquetas, ayudas, metadatos, cabeceras, contenido de tablas, pie y escala de precios usan grises más claros.
- Leve aumento de tamaño en microtextos críticos sin modificar la lógica del motor ni el layout general.

## 1.1.0 — 2026-09-22

- Reemplazo del combo de tres pares por campo libre de símbolo.
- Normalización de entradas como `BTC/USDT` y `BTC-USDT` a `BTCUSDT`.
- Validación de símbolo Binance con mensaje explícito **Par inexistente**.
- Temporalidades añadidas: 5m, 15m, 30m, 1H, 4H, D y W.
- Historial cambiado a **máximo disponible** desde la primera vela existente.
- Descarga paginada con progreso visible.
- Autoescala de OB contempla `bottom`, `avg` y `top` de cada bloque activo.
- Se mantiene configuración 5 / 3 / 3 / Wick.
- Corrección del estado inicial `os` para reflejar `var os = 0` del Pine Script de referencia.

## 1.0.0 — 2026-09-22

- Primera versión ejecutable.
- BTCUSDT, ETHUSDT y SOLUSDT.
- Temporalidad fija 1H.
- Historial configurable hasta 10.000 velas.
- Tres Bullish OB y tres Bearish OB.
- Mitigación por Wick / Mecha.
