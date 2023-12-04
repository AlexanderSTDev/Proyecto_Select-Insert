
class Materias_Aransel_Model {
    constructor(
        Id_Materias,
        Semestre,
        Primera_Materia,
        Segunda_Materia,
        Tercera_Materia,
        Cuarta_Materia,
        Quinta_Materia,
        Sexta_Materia,
        Septima_Materia,
        Ruta
    ) {
        this.Id_Materias = Id_Materias;
        this.Semestre = Semestre;
        this.Primera_Materia = Primera_Materia;
        this.Segunda_Materia = Segunda_Materia;
        this.Tercera_Materia = Tercera_Materia;
        this.Cuarta_Materia = Cuarta_Materia;
        this.Quinta_Materia = Quinta_Materia;
        this.Sexta_Materia = Sexta_Materia;
        this.Septima_Materia = Septima_Materia;
        this.Ruta = Ruta;
    }
    todos() {
        var html = "";
        $.get("../../Controllers/materias.controller.php?op=" + this.Ruta, (res) => {
            res = JSON.parse(res);
            $.each(res, (index, valor) => {
                html += `<tr>
                  <td>${index + 1}</td>
                  <td>${valor.Semestre}</td>
                  <td>${valor.Primera_Materia}</td>
                  <td>${valor.Segunda_Materia}</td>
                  <td>${valor.Tercera_Materia}</td>
                  <td>${valor.Cuarta_Materia}</td>
                  <td>${valor.Quinta_Materia}</td>
                  <td>${valor.Sexta_Materia}</td>
                  <td>${valor.Septima_Materia}</td>
              <td>
              <button class='btn btn-success' onclick='editar(${valor.Id_Materias
                    })'>Editar</button>
              <button class='btn btn-danger' onclick='eliminar(${valor.Id_Materias
                    })'>Eliminar</button>
              <button class='btn btn-info' onclick='ver(${valor.Id_Materias
                    })'>Ver</button>
              </td></tr>
                  `;
            });
            $("#tabla_materias_aransel").html(html);
        });
    }

    insertar() {
        var dato = new FormData();
        dato = this.Septima_Materia;
        $.ajax({
            url: "../../Controllers/materias.controller.php?op=insertar",
            type: "POST",
            data: dato,
            contentType: false,
            processData: false,
            success: function (res) {
                res = JSON.parse(res);
                if (res === "ok") {
                    Swal.fire("materias", "Materia Registrada", "success");
                    todos_controlador();
                } else {
                    Swal.fire("Error", res, "error");
                }
            }
        });
        this.limpia_Cajas();
    }

    limpia_Cajas() {
        document.getElementById("Semestre").value = "";
        document.getElementById("Primera_Materia").value = "";
        document.getElementById("Segunda_Materia").value = "";
        document.getElementById("Tercera_Materia").value = "";
        document.getElementById("Cuarta_Materia").value = "";
        document.getElementById("Quinta_Materia").value = "";
        document.getElementById("Sexta_Materia").value = "";
        document.getElementById("Septima_Materia").value = "";
        $("#Modal_materias_aransel").modal("hide");
    }
}
