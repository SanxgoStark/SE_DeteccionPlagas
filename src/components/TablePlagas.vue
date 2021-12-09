<template>
<form @submit.prevent="sendAns">
    <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <table class="table">
          <thead>
            <tr>
              <th>Cama 1</th>
              <th>Cama 2</th>
              <th>Cama 3</th>
              <th>Cama 4</th>
              <th>Cama 5</th>
            </tr>
          </thead>
          <tbody>
            <tr class="">
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[0]" id="01">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[1]" id="02">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[2]" id="03">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[3]" id="04">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[4]" id="05">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
            </tr>
            <!---->
            <tr class="">
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[5]" id="06">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[6]" id="07">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[7]" id="08">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[8]" id="09">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[9]" id="10">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
            </tr>
            <!---->
            <tr class="">
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[10]" id="11">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[11]" id="12">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[12]" id="13">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[13]" id="14">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[14]" id="15">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
            </tr>
            <!---->
            <tr class="">
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[15]" id="16">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[16]" id="17">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[17]" id="18">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[18]" id="19">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[19]" id="20">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
            </tr>
            <!---->
            <tr class="">
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[20]" id="21">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[21]" id="22">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[22]" id="23">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[23]" id="24">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
              <td>
                <div class="input-group mb-3">
                  <select class="custom-select" v-model="respuestas[24]" id="25">
                    <option value="V">Verde</option>
                    <option value="R">Rojo</option>
                    <option value="A">Amarillo</option>
                  </select>
                </div>
              </td>
            </tr>
            <!---->
          </tbody>
        </table>
      </div>
    </div>
    <!--BOTON-->
          <input
        type="submit"
        class="btn btn-primary btn-lg"
        href="#"
        value="Enviar"
        role="button"
      />
  </div>
</form>
</template>

<script>
export default {
  data() {
    return {
      respuestas: [
        { c1: "" },
        { c2: "" },
        { c3: "" },
        { c4: "" },
        { c5: "" },
        { c6: "" },
        { c7: "" },
        { c8: "" },
        { c9: "" },
        { c10: "" },
        { c11: "" },
        { c12: "" },
        { c13: "" },
        { c14: "" },
        { c15: "" },
        { c16: "" },
        { c17: "" },
        { c18: "" },
        { c19: "" },
        { c20: "" },
        { c21: "" },
        { c22: "" },
        { c23: "" },
        { c24: "" },
      ],
    };
  },
  methods:{
    sendAns() {
      localStorage.setItem('respuestas', JSON.stringify(this.respuestas));
      this.$router.push({path: '/aspecto'});
    },
  }
};
</script>

<style scoped>
.container-fluid{
  bottom: 50px;
  position: absolute;
}
</style>