<template>
  <button type="button" class="btn btn-success btn-sm">add+</button>
  <b-table-simple hover small caption-top responsive class="b-table">
    <col>
    <col>
    <col>
    <col>
    <b-thead head-variant="dark">
      <b-tr>
        <b-th>{{ col1 }}</b-th>
        <b-th>{{ col2 }}</b-th>
        <b-th>{{ col3 }}</b-th>
        <b-th><download></download></b-th>
      </b-tr>
    </b-thead>
    <b-tbody v-for="audit in audits">
      <b-tr>
        <b-td>{{ audit.id }}</b-td>
        <b-td>{{ audit.startDate }}</b-td>
        <b-td>{{ audit.endDate }}</b-td>
        <b-td>
          {{ audit.pdfInfo }}
<!--          <a :href="audit.pdfInfo">-->
<!--            <clipboard-list>-->
<!--            </clipboard-list>-->
<!--          </a>-->
        </b-td>
      </b-tr>
    </b-tbody>
  </b-table-simple>
</template>

<script>
import {ClipboardList, Download} from 'mdue'
import axios from 'axios'
import jsPDF from 'jspdf'

export default {

  async setup() {
    const response = await axios.get("https://pla-back-shob2wlylq-uc.a.run.app/audit/list");
    const audits = response.data;
    return {
      audits
    }
  },

  data() {
    return {
      col1: 'id',
      col2: 'fecha ini',
      col3: 'fecha fin',
    }
  },

  methods: {
    fromStringtoPdf: async function (id ,report){
      var doc = new jsPDF();
      doc.text(10,10, report);
      doc.save('public/'+id+'.pdf');
    }
  },

  components: {
    Download,
    ClipboardList,
  }
}
</script>

<style scoped>
.b-table {
  text-align: center;
  margin-left: 100px;
  margin-right: 100px;
}
</style>