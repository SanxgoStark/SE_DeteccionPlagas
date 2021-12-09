<template>
  

  <div :style="{'background-image':'url(https://images.unsplash.com/photo-1586771107445-d3ca888129ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YWdyaWN1bHR1cmV8ZW58MHx8MHx8&w=1000&q=80)'}">
    <div id="cardRes" >
    <div class="album py-5">
      <div class="container">
        <div class="row">
          <div v-if="this.plaga == 'araña'">
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img
                  class="card-img-top"
                  alt="Thumbnail [100%x225]"
                  style="height: 225px; width: 100%; display: block"
                  src="@/assets/aranaroja.jpeg"
                  data-holder-rendered="true"
                />
                <div class="card-body">
                  <div v-if="this.porcentaje == 20">
                    <h1>Cultura y mecanico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Principalmente actividades preventivas: Riego adecuado de
                      la planta, usar un abonado orgánico de liberación lenta,
                      respetar los abonados de siembra recomendados, orientar la
                      plantación de manera que los cultivos obtengan las horas
                      de luz solar necesarias y recomendadas, apostar por la
                      biodiversidad, plantando el mayor número de plantas
                      posibles y respetando las posibles incompatibilidades.
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 52">
                    <h1>Quimico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      El método más eficaz, llegados al punto de infección, es
                      la utilización de insecticidas y acaricidas. Acaricidas e
                      insecticidas cuya materia activa sea: Acequinocil,
                      maltodextrina, además de insecticidas a base del hongo
                      entomopatógeno Beauveria bassiana,
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 28">
                    <h1>Biologico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      De entre las más de 60 especies de fitoseidos que existen,
                      tan solo una pequeña parte, unas 6 o 7, tienen importancia
                      agrícola y entre estas cabe destacar: Euseius stipulatus
                      (Athias-Henriot). Neoseiulus californicus (McGregor)
                      Phytoseiulus persimilis (Athias-Henriot)
                    </p>
                  </div>
                  <div
                    class="d-flex justify-content-between align-items-center"
                  >
                    <div class="btn-group"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
  <div v-else-if="this.plaga == 'gusano_soldado'">
  <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img
                  class="card-img-top"
                  alt="Thumbnail [100%x225]"
                  style="height: 225px; width: 100%; display: block"
                  src="@/assets/gusanosoldado.jpeg"
                  data-holder-rendered="true"
                />
                <div class="card-body">
                  <div v-if="this.porcentaje == 20">
                    <h1>Cultura y mecanico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Para proteger a la producción se recomienda colocar mallas o materiales similares para evitar que los vientos fuertes ayuden a este gusano a establecerse en un lugar determinado.
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 52">
                    <h1>Quimico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Aplicación de trampas con feromonas o insecticidas orgánicos, los cuales además de atraer a estos insectos facilitan su eliminación sin dañar al medio ambiente.
Insecticidas a base de compuestos fosforados, carbamatos y piretroides, y en la solución se recomienda la adición de un coadyuvante de tipo surfactante, por ejemplo, los siliconados, que son de mucha utilidad para lograr que la gota escurra hacía el cogollo.
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 28">
                    <h1>Biologico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                     Para su eliminación también se puede llevar a cabo un control biológico a través de insectos depredadores como la crisopa o con gusanos himenópteros como las avispas.
                    </p>
                  </div>
                  <div
                    class="d-flex justify-content-between align-items-center"
                  >
                    <div class="btn-group"></div>
                  </div>
                </div>
              </div>
            </div>
  </div>


  <div v-else-if="this.plaga == 'trip'">
  <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img
                  class="card-img-top"
                  alt="Thumbnail [100%x225]"
                  style="height: 225px; width: 100%; display: block"
                  src="@/assets/trips.jpeg"
                  data-holder-rendered="true"
                />
                <div class="card-body">
                  <div v-if="this.porcentaje == 20">
                    <h1>Cultura y mecanico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Evitar estresar la planta ya que esto la hace más propensa a contraer enfermedades y plagas. Ejemplos de ello podrían ser la falta o el exceso de nutrientes, riego, luz o temperatura.
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 52">
                    <h1>Quimico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Cuando existe una alta tasa de infección en el cultivo, se debe recurrir a productos especializados; un insecticida piretroide de espectro alto.
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 28">
                    <h1>Biologico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Favorecer la presencia de depredadores naturales de los trips en los cultivos, como pueden ser las mariquitas o las crisopas, dos grandes aliados contra innumerables insectos dañinos.
                    </p>
                  </div>
                  <div
                    class="d-flex justify-content-between align-items-center"
                  >
                    <div class="btn-group"></div>
                  </div>
                </div>
              </div>
            </div>
  </div>


  <div v-else-if="this.plaga == 'paratrioza'">
    <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img
                  class="card-img-top"
                  alt="Thumbnail [100%x225]"
                  style="height: 225px; width: 100%; display: block"
                  src="@/assets/trips.jpeg"
                  data-holder-rendered="true"
                />
                <div class="card-body">
                  <div v-if="this.porcentaje == 20">
                    <h1>Cultura y mecanico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Se recomienda mantener al cultivo libre de hospederas silvestres en la periferia y en el interior del terreno antes, durante y después del ciclo de producción. Se sabe que la paratrioza cuenta con un amplio rango de hospedantes de 19 familias, de las cuales 40 especies de solanáceas son sus favoritas
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 52">
                    <h1>Quimico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Para el manejo de paratrioza destacan los insecticidas con los siguientes modos de acción: insecticidas que actúan sobre el sistema nervioso, insecticidas que intervienen en la metamorfosis, insecticidas que inhiben la síntesis de la cutícula e insecticidas que inhiben los procesos metabólicos. Para la mejor implementación de las aplicaciones de insecticidas es necesario el uso de boquillas adecuadas, la corrección del pH y calidad el agua, horario de aplicación, tipo de formulaciones, Intervalo de seguridad, dosis de insecticida y volúmenes de agua, entre otras.
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 28">
                    <h1>Biologico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Los principales depredadores que se han utilizado son Chrysoperla carnea, donde las larvas son las únicas que ejercen acción contra paratrioza, depredándolas. La catarinita (Hipodamia convergens) es una gran consumidora de huevecillos y se encuentra presente en cultivos de campo abierto. El principal parasitoide de ninfas de paratrioza es la avispita Tamarixia triozae, misma que se ha encontrado parasitando de forma natural en regiones del centro de México, alcanzando hasta el 70 % de parasitismo, situándose como una especie potencial para el control biológico de paratrioza. En la producción tradicional de hortalizas en campo, lo más recomendable es que los enemigos naturales se liberen en la vegetación que se encuentra en la periferia de las parcelas, debido a que estos difícilmente se establecerán dentro del cultivo por las intensas aplicaciones de insecticidas y fungicidas que se hacen.
                    </p>
                  </div>
                  <div
                    class="d-flex justify-content-between align-items-center"
                  >
                    <div class="btn-group"></div>
                  </div>
                </div>
              </div>
            </div>
  </div>


  <div v-else-if="this.plaga == 'pulgon'">
      <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img
                  class="card-img-top"
                  alt="Thumbnail [100%x225]"
                  style="height: 225px; width: 100%; display: block"
                  src="@/assets/pulgon.jpeg"
                  data-holder-rendered="true"
                />
                <div class="card-body">
                  <div v-if="this.porcentaje == 20">
                    <h1>Cultura y mecanico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      No cuenta con esta solucion
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 52">
                    <h1>Quimico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      En invierno se aplica únicamente tratamientos preventivos.
En primavera y verano se aplica insecticidas especializados a base de piretroide y nicotina (el tabaco se usa como alternativa; así como potasio y tratamientos a base de vinagre; proporción de 10 de agua por cada 1 de vinagre).
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 28">
                    <h1>Biologico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      La mariquita, crisopa y pequeñas avispillas.
                    </p>
                  </div>
                  <div
                    class="d-flex justify-content-between align-items-center"
                  >
                    <div class="btn-group"></div>
                  </div>
                </div>
              </div>
            </div>
  </div>

  <div v-else-if="this.plaga == 'piojo_harinoso'">
        <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img
                  class="card-img-top"
                  alt="Thumbnail [100%x225]"
                  style="height: 225px; width: 100%; display: block"
                  src="@/assets/piojoharinoso.jpeg"
                  data-holder-rendered="true"
                />
                <div class="card-body">
                  <div v-if="this.porcentaje == 20">
                    <h1>Cultura y mecanico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Las inspecciones de campo en etapas tempranas son críticas para poner en práctica un programa de manejo adecuado.
Hay una diseminación natural desde las vides infestadas, por la acción del viento y de las aves, el transporte el equipo y las herramientas utilizadas en los viñedos infestados (por ejemplo, las cosechadoras y las tijeras que usan las cuadrillas de trabajadores en el campo), así como el movimiento de los frutos contaminados, la pulpa y las cañas/hojas que también ayudan a la diseminación de esta plaga.
Por ello es importante monitorear las herramientas con las que se manipulan la planta a fin de evitar poner en contacto si ya están contaminadas con ésta plaga.

                    </p>
                  </div>
                  <div v-if="this.porcentaje == 52">
                    <h1>Quimico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Movento es un insecticida translaminar aplicado a nivel foliar que penetra en la vid por medio de la primera hoja activa. Una vez dentro, el metabolito cambia a su forma de “enol” y este metabolito mata al pulgón harinoso. El insecticida actúa como inhibidor de la biosíntesis de lípidos (inhibe los procesos metabólicos relacionados con los lípidos y grasas, haciendo que los pulgones no se puedan mover, mudar de estadío, ni alimentarse). El pulgón harinoso morirá más lentamente que con otros insecticidas de contacto, por lo que es preciso tener paciencia. Asimismo, el metabolito en forma de “enol” permanecerá en la vid durante largo tiempo, y matará a los pulgones mucho tiempo después de que Movento haya sido asperjado
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 28">
                    <h1>Biologico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Conocidas como técnicas de trampeo, se pueden emplear feromonas para acabar con ésta plaga, sin el uso necesario de depredadores naturales.
Se pueden utilizar trampas de feromonas como la trampa delta roja que utiliza como carnada una feromona sexual sintética del pulgón harinoso de la vid. Se recomienda colocar dos trampas en los viñedos pequeños, o dos trampas por cada 80 – 120 acres en las orillas de los bloques que quedan cerca de los caminos o junto a otros cultivos.
                    </p>
                  </div>
                  <div
                    class="d-flex justify-content-between align-items-center"
                  >
                    <div class="btn-group"></div>
                  </div>
                </div>
              </div>
            </div>
  </div>


  <div v-else-if="this.plaga == 'mosca_blanca'">
          <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img
                  class="card-img-top"
                  alt="Thumbnail [100%x225]"
                  style="height: 225px; width: 100%; display: block"
                  src="@/assets/moscablanca.jpeg"
                  data-holder-rendered="true"
                />
                <div class="card-body">
                  <div v-if="this.porcentaje == 20">
                    <h1>Cultura y mecanico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      La rotación de cultivos es ideal como técnica de prevención.
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 52">
                    <h1>Quimico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Insecticidas o elaboraciones caseras con potasa (dosis de 15-30 g/l de agua, se pulveriza sobre la planta infectada). 
Así como el uso de soluciones a base de tabaco; Sobre 1 kg de hojas y tallos se vierten 15 l de agua, agregando un puñado de jabón como adherente. Se deja reposar durante 1 día, se filtra y aplica pulverizando. Otra solución con tabaco también es con 250 g de tabaco, 30 g de jabón y 4 litros de agua, se hierven durante media hora. Luego se diluye en una proporción de 1 parte de caldo de tabaco con 4 partes de agua.
                    </p>
                  </div>
                  <div v-if="this.porcentaje == 28">
                    <h1>Biologico</h1>
                    <h2>{{this.plaga}}</h2>
                    <p class="card-text">
                      Cualquier objeto de color amarillo untado con aceite o sustancia pegajosa.
Las especies Scymnus o Chilocorus y Harmonia axyridis, se alimentan de la Mosca blanca (especies de catarinitas).
                    </p>
                  </div>
                  <div
                    class="d-flex justify-content-between align-items-center"
                  >
                    <div class="btn-group"></div>
                  </div>
                </div>
              </div>
            </div>
  </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      invernadero: [],
      plaga: [],
      porcentaje: 0,
    };
  },
  created() {
    let matriz = JSON.parse(localStorage.getItem("respuestas"));
    let plga = localStorage.getItem("plaga");
    if (matriz === null) {
      this.invernadero = [];
    } else {
      this.invernadero = matriz;
    }

    if (plga === null) {
      this.plaga = [];
    } else {
      this.plaga = plga;
    }
    this.getPorcentaje();
  },
  methods: {
    getPorcentaje() {
      let verde = 0,
        amarillo = 0,
        rojo = 0,
        aux = 0;
      for (let i = 0; i < this.invernadero.length; i++) {
        aux = this.invernadero[i];
        if (aux == "V") {
          verde++;
        }
        if (aux == "R") {
          rojo++;
        }
        if (aux == "A") {
          amarillo++;
        }
      }
      if (verde <= 5) {
        this.porcentaje = 20;
      }
      if (rojo <= 13) {
        this.porcentaje = 52;
      }
      if (amarillo <= 7) {
        this.porcentaje = 28;
      }
    },
  },
};
</script>

<style scoped>
#cardRes {
  position: relative;
  left: 25%;
}
</style>