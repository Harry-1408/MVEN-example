<template>
  <div class="hello">
      <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Status</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="i in order">
            <td>{{i.id}}</td>
            <td>{{i.name}}</td>
            <td>{{i.status}}</td>
            <td v-if="i.status == 'pending'" @click="buttonClick(i.status, i.id)"><button>inprocess</button></td>
            <td v-if="i.status == 'inprocess'" @click="buttonClick(i.status, i.id)"><button>completed</button></td>
            <td v-if="i.status == 'completed'" @click="buttonClick(i.status, i.id)"><button>finished</button></td>
          </tr>
        </tbody>
      </table>
  </div>
</template>

<script>
import axios from 'axios'
import io from 'socket.io-client';


export default {
  name: 'HelloWorld',
  data () {
    return {
      order: '',
      selected: [],
      button: ''
    }
  },
  mounted() {
    axios.get('http://192.168.43.205:3000/order')
    .then((res)=>{
      this.order = res.data
      console.log(res)
    })
    .catch((err)=>{
      console.log(err)
    })
    var socket = io.connect('http://192.168.43.205:3300');
      let self = this
    socket.on('stream', function(data){
      self.order = data.title;
    });
  },
  methods:{
    buttonClick(status, id){ 
      let new_status = ''
      if (status == "pending") {
        new_status = "inprocess"
      } else if(status == "inprocess"){
        new_status = "completed"
      } else if(status == "completed"){
        new_status = "finished"
      }
      axios.put('http://192.168.43.205:3000/orderupdate?status=' + new_status + '&id=' +id)
      .then((res)=>{
        this.order = res.data
        console.log(res)
      })
      .catch((err)=>{
        console.log(err)
      })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
