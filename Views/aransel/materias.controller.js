//archivo de donde llamar al procedimiento
//controlador

function init() {
    $("#form_materias_aransel").on("submit", function (e) {
        guardaryeditar(e);
    });
}

$().ready(() => {
    //detecta carga de la pagina
    todos_controlador();
});

var todos_controlador = () => {
    var todos = new Materias_Aransel_Model("", "", "", "", "", "", "", "", "", "todos");
    todos.todos();
}

var guardaryeditar = (e) => {
    e.preventDefault();
    var formData = new FormData($("#form_materias_aransel")[0]);
    var materias = new Materias_Aransel_Model('', '', '', '', '', '', '', '', formData, 'insertar');
    materias.insertar();
}

    ; init();
