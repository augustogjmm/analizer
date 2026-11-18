> **Proyecto experimental de validación visual y procesamiento de datos de mercado.** La implementación adapta lógica de un proyecto de terceros; respetar los términos de atribución y uso no comercial que figuran en [LICENSE.txt](LICENSE.txt). No constituye un producto financiero certificado.

**[Portfolio ejecutivo](https://github.com/augustogjmm/Radar/blob/main/PORTFOLIO.md)**

# Analizer

Analizador visual de **Order Blocks** sobre Binance Spot, pensado para validar resultados contra TradingView usando como referencia la lógica open-source de **Order Block Detector [LuxAlgo]**.

## Versión actual

**v1.2.0**

- Campo libre para escribir cualquier par de Binance Spot (`BTCUSDT`, `ETH/USDT`, `SOL-USDT`, etc.).
- Validación del símbolo antes de descargar velas. Si no existe, muestra **“Par inexistente”**.
- Temporalidades: `5m`, `15m`, `30m`, `1H`, `4H`, `D`, `W`.
- Historial: descarga el **máximo disponible** desde la primera vela del par para la temporalidad elegida.
- Order Blocks: `Volume Pivot Length = 5`, `Bullish OB = 3`, `Bearish OB = 3`, `Mitigation = Wick / Mecha`.
- Líneas verdes para Bullish OB y rojas para Bearish OB, con precio visible.
- Opción **Incluir OB en autoescala** activada por defecto.
- Datos: Binance Spot.

> En temporalidades cortas como 5m, un par con muchos años de historia puede requerir cientos de solicitudes a Binance y tardar bastante la primera vez. La interfaz muestra el progreso de descarga.

## Ejecutar

La aplicación es estática. La forma recomendada es levantar un servidor local:

### Windows

Ejecutar `start.bat` y abrir `http://localhost:8000`.

### Python

```bash
python -m http.server 8000
```

Luego abrir `http://localhost:8000`.

También puede abrirse `index.html` directamente, aunque algunos navegadores o políticas de red pueden bloquear llamadas cross-origin.

La versión 1.2.0 incorpora EMA 10/55/200, volumen y MACD, según el [registro de cambios](CHANGELOG.md). La implementación conserva la lógica de Order Blocks indicada en su licencia.

## Versiones

- `versions/v1.0.0/` — primera prueba: BTC/ETH/SOL, 1H e historial limitado.
- `versions/v1.1.0/` — símbolo libre, múltiples temporalidades e historial máximo disponible.
- `versions/v1.2.0/` — indicadores EMA, volumen y MACD.

La raíz del repositorio siempre contiene la versión estable más reciente.

## Validación contra TradingView

Para comparar resultados, usar el mismo mercado/símbolo de Binance Spot y la misma temporalidad. La configuración del indicador es:

- Volume Pivot Length: `5`
- Bullish OB: `3`
- Bearish OB: `3`
- Mitigation Methods: `Wick`
- Average Line Width: `1`

## Licencia y atribución

Esta implementación adapta para pruebas no comerciales la lógica del script open-source **Order Block Detector [LuxAlgo]**. Ver `LICENSE.txt`.
