<template>
  <div id="surveyContainer">
    <survey :survey="survey"></survey>
  </div>
</template>

<script>
import * as Survey from "survey-vue";
import "survey-vue/modern.css";
Survey.StylesManager.applyTheme("modern");
function sendDataToServer(survey) {
  //Base de conocimientos
  this.resp = JSON.stringify(survey.data);
  if (this.resp.includes("araña1")) {
    this.plaga = "araña";
    localStorage.setItem("plaga", this.plaga);
    alert("Continuar");
  }
  if (this.resp.includes("soldado1")) {
    this.plaga = "gusano_soldado";
    localStorage.setItem("plaga", this.plaga);
    alert("Continuar");
  }
  if (this.resp.includes("trips1")) {
    this.plaga = "trip";
    localStorage.setItem("plaga", this.plaga);
    alert("Continuar");
  }
  if (this.resp.includes("paratrioza1")) {
    this.plaga = "paratrioza";
    localStorage.setItem("plaga", this.plaga);
    alert("Continuar");
  }
  if (this.resp.includes("pulgon1")) {
    this.plaga = "pulgon";
    localStorage.setItem("plaga", this.plaga);
    alert("Continuar");
  }
  if (this.resp.includes("harinoso1")) {
    this.plaga = "piojo_harinoso";
    localStorage.setItem("plaga", this.plaga);
    alert("Continuar");
  }
  if (this.resp.includes("mosca1")) {
    this.plaga = "mosca_blanca";
    localStorage.setItem("plaga", this.plaga);
    alert("Continuar");
  }
  setTimeout(function () {
    window.location = "http://localhost:8080/#/solucion";
  }, 3000);
}

export default {
  data() {
    //Base de hechos && Maquina Inferencia
    var surveyJSON = {
      locale: "es",
      pages: [
        {
          name: "araña",
          elements: [
            {
              type: "dropdown",
              name: "araña1",
              title: "¿Es pequeña?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "araña2",
              title: "¿Tiene cuerpo rojo?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "araña3",
              title: "¿Sus huevecillos eclosionan entre 2 y 4 dias?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
          ],
        },
        {
          name: "tienearañaroja",
          elements: [
            {
              type: "dropdown",
              name: "tienearaña1",
              title: "¿Tiene manchas rojas?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "tienearaña2",
              title: "¿Se encuentra en la zona más verde de la planta?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "tienearaña3",
              title: "¿La planta tiene partes con defoliacion?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf: "{araña1} = 'Si' and {araña2} = 'Si' and {araña3} = 'Si'",
        },
        {
          name: "soldado",
          elements: [
            {
              type: "dropdown",
              name: "soldado1",
              title: "¿Tiene apariencia de polilla?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "soldado2",
              title: "¿Tiene el tórax marrón y cabeza gris-marrón?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "soldado3",
              title: "¿Sus huevecillos eclosionan entre 2 y 9 días?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "soldado4",
              title: "¿Es principalmente activa durante la noche?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf: "{araña1} = 'No' or {araña2} = 'No' or {araña3} = 'No'",
        },
        {
          name: "tienegusanosoldado",
          elements: [
            {
              type: "dropdown",
              name: "tienesoldado1",
              title: "¿Tiene mordiscos grandes en las hojas?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "tienesoldado2",
              title: "¿Las hojas presentan desgarro evidente?",
              choices: [
                { value: "Si", text: { es: "Si" } },
                { value: "No", text: { es: "No" } },
              ],
            },
            {
              type: "dropdown",
              name: "tienesoldado3",
              title: "¿Desgarre en las flores?",
              choices: [
                { value: "Si", text: { es: "Si" } },
                { value: "No", text: { es: "No" } },
              ],
            },
            {
              type: "dropdown",
              name: "tienesoldado4",
              title: "¿Desgarre en las yemas?",
              choices: [
                { value: "Si", text: { es: "Si" } },
                { value: "No", text: { es: "No" } },
              ],
            },
          ],
          visible: false,
          visibleIf:
            "{soldado1} = 'Si' and {soldado2} = 'Si' and {soldado3} = 'Si' and {soldado4} = 'Si'",
        },
        {
          name: "trips",
          elements: [
            {
              type: "dropdown",
              name: "trips1",
              title: "¿Tiene cuerpo delgado?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "Si", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "trips2",
              title: "¿Vive de 14 a 30 días?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "Si", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "trips3",
              title: "¿Pone huevecillos son ser fecundadas?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "Si", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "trips4",
              title: "¿No soporta el frío y se esconde?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "Si", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf:
            "{soldado1} = 'No' or {soldado2} = 'No' or {soldado3} = 'No' or {soldado4} = 'No'",
        },
        {
          name: "tienetrips",
          elements: [
            {
              type: "dropdown",
              name: "tienetrips1",
              title: "¿Tiene hojas enrolladas?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "tienetrips2",
              title: "¿Tiene puntos negros en la ocara inferior de la hoja?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "tienetrips3",
              title: "¿La flor aún no se ha abierto?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "tienetrips4",
              title: "¿El fruto presenta deformaciones?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "tienetrips5",
              title: "¿Se presenta caída de hojas o de pétalos?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf:
            "{trips1} = 'No' and {trips2} = 'No' and {trips3} = 'No' and {trips4} = 'No'",
        },
        {
          name: "paratrioza",
          elements: [
            {
              type: "dropdown",
              name: "paratrioza1",
              title: "¿Tiene forma oval aplanada?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "paratrioza2",
              title: "¿Tiene pequeños ojos rojos con filamentos?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "paratrioza3",
              title: "¿Sus huevecillos son anaranjados-amarillentos?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "paratrioza4",
              title: "¿Sus huevecillos eclosionan entre 3 y 7 días ?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "paratrioza5",
              title:
                "¿Tiene color anaranjado o amarillo verdoso y alas blancuzcas?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf:
            "{trips2} = 'Si' or {trips1} = 'Si' or {trips3} = 'Si' or {trips4} = 'Si'",
          description: { es: "\n" },
        },
        {
          name: "tienepratrioza",
          elements: [
            {
              type: "dropdown",
              name: "tieneparatrioza1",
              title:
                "¿Huevecillos en el haz y envés de la hoja anaranjados-amarillentos brillantes?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "tieneparatrioza2",
              title: "¿Las hojas dañadas se enrollan hacía su propio centro?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "question3",
              title: "¿Hojas color amarillento con bordes con tonos morados?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "question4",
              title: "¿Acortamiento en los entrenudos?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf:
            "{paratrioza1} = 'Si' and {paratrioza2} = 'Si' and {paratrioza3} = 'Si' and {paratrioza4} = 'Si' and {paratrioza5} = 'Si'",
        },
        {
          name: "pulgon",
          elements: [
            {
              type: "dropdown",
              name: "pulgon1",
              title: "¿Tiene cuerpo blanco pequeño?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "pulgon2",
              title: "¿Tiene aspecto globoso?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "pulgon3",
              title: "¿Mide de 1 a 10 milímetros?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "pulgon4",
              title: "¿Tiene color blanco o negro o amarillo, verde y pardo?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "question9",
              title:
                "¿Tiene alas con torax separado y alas o torax unido sin alas?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf:
            "{paratrioza1} = 'No' or {paratrioza2} = 'No' or {paratrioza3} = 'No' or {paratrioza4} = 'No' or {paratrioza5} = 'No'",
        },
        {
          name: "tienepulgon",
          elements: [
            {
              type: "dropdown",
              name: "tienepulgon1",
              title: "¿Tienen manchas cafés?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf:
            "{pulgon1} = 'Si' and {pulgon2} = 'Si' and {pulgon3} = 'Si' and {pulgon4} = 'Si'",
        },
        {
          name: "piojoharinoso",
          elements: [
            {
              type: "dropdown",
              name: "harinoso1",
              title: "¿Tiene dos pares de alas?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "harinoso2",
              title: "¿Tiene largos filamentos en la cola?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "harinoso3",
              title: "¿Tiene un recubrimiento ceroso?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "harinoso4",
              title: "¿Se mueve muy poco?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf:
            "{pulgon1} = 'No' or {pulgon2} = 'No' or {pulgon3} = 'No' or {pulgon4} = 'No'",
        },
        {
          name: "tienepiojoharinoso",
          elements: [
            {
              type: "dropdown",
              name: "question6",
              title: "¿Tiene malformaciones?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "question7",
              title: "¿Las hojas de la planta están amarillentas?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "question8",
              title: "¿Tiene moho oscuro?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "item2", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf:
            "{harinoso1} = 'Si' and {harinoso2} = 'Si' and {harinoso3} = 'Si' and {harinoso4} = 'Si'",
        },
        {
          name: "moscablanca",
          elements: [
            {
              type: "dropdown",
              name: "mosca1",
              title: "¿La larva tiene forma ovalada casi redonda?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "mosca2",
              title: "¿La larva es amarilla?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "mosca3",
              title: "¿Tiene aparato bucal perforador y succionador?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "mosca4",
              title: "¿Está cubierta por una sustancia cerosa blanca?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
            {
              type: "dropdown",
              name: "mosca5",
              title:
                "¿Tiene las alas colocadas en vertical y en paralelo al cuerpo?",
              choices: [
                { value: "Si", text: "Si" },
                { value: "No", text: "No" },
              ],
            },
          ],
          visible: false,
          visibleIf:
            "{harinoso1} = 'No' or {harinoso2} = 'No' or {harinoso3} = 'No' or {harinoso4} = 'No'",
        },
        {
          name: "tienemoscablanca",
          visible: false,
          visibleIf: "{mosca1} = 'Si' and {mosca2} = 'Si'",
        },
      ],
    };
    const survey = new Survey.Model(surveyJSON);
    survey.onComplete.add(sendDataToServer);
    return {
      resp: [],
      plaga: [],
      survey: survey,
    };
  },
  created() {
    let data = JSON.parse(localStorage.getItem("respuestas"));
    if (data === null) {
      this.resp = [];
    } else {
      this.resp = data;
    }
  },
};
</script>

<style>
</style>