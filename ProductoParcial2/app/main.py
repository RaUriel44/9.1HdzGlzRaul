from flask import Flask, render_template, request, send_file
from inventario import obtener_inventario
from fpdf import FPDF
import os

app = Flask(__name__)
resultado_global = ""

@app.route("/", methods=["GET", "POST"])
def index():
    global resultado_global
    if request.method == "POST":
        accion = request.form.get("accion")

        if accion == "escanear":
            resultado_global = obtener_inventario()
        elif accion == "pdf" and resultado_global:
            generar_pdf(resultado_global)
            return send_file("resultado.pdf", as_attachment=True)
        elif accion == "limpiar":
            resultado_global = ""

    return render_template("index.html", resultado=resultado_global)

def generar_pdf(texto):
    pdf = FPDF()
    pdf.add_page()
    pdf.set_auto_page_break(auto=True, margin=15)
    pdf.set_font("Arial", size=12)

    for linea in texto.split("\n"):
        pdf.multi_cell(0, 10, linea)

    pdf.output("resultado.pdf")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
