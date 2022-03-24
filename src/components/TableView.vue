<template>
  <button type="button" class="btn btn-success btn-sm">add+</button>
  <b-table-simple hover :items="audit" small caption-top responsive class="b-table">
    <colgrup>
      <col>
      <col>
      <col>
      <col>
    </colgrup>
    <b-thead head-variant="dark">
      <b-tr>
        <b-th>{{ col1 }}</b-th>
        <b-th>{{ col2 }}</b-th>
        <b-th>{{ col3 }}</b-th>
        <b-th><download></download></b-th>
      </b-tr>
    </b-thead>
      <b-tbody v-for="index in 2">
        <b-tr>
          <b-td>{{ audit[index].id }}</b-td>
          <b-td>{{ audit[index].iniDate }}</b-td>
          <b-td>{{ audit[index].endDate }}</b-td>
          <b-td>
              <a href={{audit[index].link}}>
                <clippy></clippy>
              </a>
          </b-td>
        </b-tr>
      </b-tbody>
  </b-table-simple>
</template>

<script>
import { Download } from 'mdue'
import { Clippy } from 'mdue'

export default {
  data() {
    return {
      col1: 'id',
      col2: 'fecha ini',
      col3: 'fecha fin',
      audit:[
        {id:'1',iniDate: '02/02/2022',endDate: '03/03/2022', link: 'www.google.com'},
        {id:'2',iniDate: '02/02/2022',endDate: '03/05/2022', link: 'www.facebook.com'},
        {id:'3',iniDate: '02/02/2022',endDate: '03/05/2022', link: 'www.facebook.com'}
      ],
    }
  },
  components: {
    Download,
    Clippy
  }
}
</script>

<style scoped>
.b-table{
  text-align: center;
  margin-left: 100px;
  margin-right: 100px;
}
</style>