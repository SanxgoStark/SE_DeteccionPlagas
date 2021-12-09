<template>
<div>
  <Navbar/>
<div class="container"></div>
  <TablePlagas/>
</div>

</template>

<script>
import Navbar from '@/components/Navbar.vue'
import TablePlagas from  '@/components/TablePlagas.vue'
export default {
  name: 'HelloWorld',
  components: { 
    Navbar, TablePlagas
  }
}
</script>

<style scoped>

</style>
