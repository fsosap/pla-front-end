<script setup>
import AuditoriesTitle from "./components/AuditoriesTitle.vue";
import TableView from "./components/TableView.vue";
</script>

<template>

  <header>
    <AuditoriesTitle title="Auditorías" des="A continuación podrá visualizar los reportes de las siembras pasadas" />
  </header>
  <div class="border border-success rounded mytable">
    <main>
      <Suspense>
        <TableView />
        <template #fallback>
          <h1>LOADING...</h1>
        </template>
      </Suspense>
    </main>
  </div>

</template>

<style>
@import './assets/base.css';

.btn {
  position: absolute;
  right: 110px;
  bottom: 110px;
}

#app {
  color: #245230;
  height: 600px;
  border-color: black;
  padding-left: 100px;
  padding-right: 100px;
}

.mytable {
  /*position: relative;*/
  padding-top: 20px;
  margin-right: 150px;
  margin-left: 150px;
}

header {
  text-align: center;
}

h3 {
  font-size: 10px;
  font-family: "sans-serif";
}

.title{
  font-size: 100px;
  font-family: "sans-serif";
}

.content {
  margin-top: 30px;
  padding-right: 10px;
  padding-left: 10px;
}

</style>
