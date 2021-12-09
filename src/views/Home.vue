<template>
  <div class="home">
    <Navbar />
    <div class="container"></div>
    <TablePlagas />
  </div>
</template>

<script>
import TablePlagas from '@/components/TablePlagas.vue'
import Navbar from '@/components/Navbar.vue'
export default {
  name: 'Home',
  components: {
    TablePlagas, Navbar
  }
}
</script>
