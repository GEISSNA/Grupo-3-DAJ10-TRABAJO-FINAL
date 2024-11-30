--Consulta para análisis de series temporales (ventas por mes)
SELECT
    DATE_TRUNC('month', FechaVenta) AS Mes,
    SUM(VentaTotal) AS VentasTotales
FROM
    Ventas
GROUP BY
    DATE_TRUNC('month', FechaVenta)
ORDER BY
    Mes;



--Consulta para clasificar clientes según frecuencia de compra
SELECT
    ClienteID,
    COUNT(VentaID) AS TotalCompras,
    SUM(VentaTotal) AS GastoTotal,
    AVG(VentaTotal) AS GastoPromedio
FROM
    Ventas
GROUP BY
    ClienteID
HAVING
    COUNT(VentaID) > 1
ORDER BY
    GastoTotal DESC;



--Consulta para identificar picos de ventas
WITH VentasPorDia AS (
    SELECT
        FechaVenta,
        SUM(VentaTotal) AS VentasDia
    FROM
        Ventas
    GROUP BY
        FechaVenta
),
Estadisticas AS (
    SELECT
        AVG(VentasDia) AS Media,
        STDDEV(VentasDia) AS Desviacion
    FROM
        VentasPorDia
)
SELECT
    FechaVenta,
    VentasDia
FROM
    VentasPorDia, Estadisticas
WHERE
    VentasDia > (Media + 2 * Desviacion)  -- Pico inusual (mas de 2 desviaciones estandar)
    OR VentasDia < (Media - 2 * Desviacion)  -- Caida inusual
ORDER BY
    FechaVenta;
