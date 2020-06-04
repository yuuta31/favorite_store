// import Vue from 'vue';
import Vue from 'vue/dist/vue.esm'
import axios from 'axios';
import Vuetify from "vuetify"; // 追加
import "vuetify/dist/vuetify.min.css"; // 追加

Vue.use(Vuetify); // 追加

const app4 = new Vue({
  el: '.js-postsIndex4',
  data: {
    postInfo: {},
    postInfoBool: false,
  },
  methods: {
    setPostInfo(id){
      axios.get(`api/posts/${id}.json`)
        .then(res => {
          this.postInfo = res.data;
          this.postInfoBool = true;
        });
    }
  }
});

