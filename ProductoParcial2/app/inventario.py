import platform
import psutil
import socket

def obtener_inventario():
    datos = []

    datos.append("=== Sistema ===")
    datos.append(f"Sistema operativo: {platform.system()} {platform.release()}")
    datos.append(f"Versión: {platform.version()}")
    datos.append(f"Arquitectura: {platform.machine()}")
    datos.append(f"Nombre del host: {socket.gethostname()}")

    datos.append("\n=== Procesador ===")
    datos.append(f"Procesador: {platform.processor()}")

    datos.append("\n=== Memoria ===")
    mem = psutil.virtual_memory()
    datos.append(f"Total: {round(mem.total / (1024**3), 2)} GB")

    datos.append("\n=== Almacenamiento ===")
    for part in psutil.disk_partitions():
        usage = psutil.disk_usage(part.mountpoint)
        datos.append(f"{part.device} - {round(usage.total / (1024**3), 2)} GB")

    return "\n".join(datos)
