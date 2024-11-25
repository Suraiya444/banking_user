 
<!-- <template>
  <img alt="Vue logo" src="./assets/logo.png">
  <HelloWorld msg="Welcome to Your Vue.js App"/>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'App',
  components: {
    HelloWorld
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style> -->


    <template>
        <div>
            <Header v-if="showHeader"></Header>
            <router-view></router-view>
            <Footer v-if="showHeader"></Footer>
        </div>
    </template>

    <script>
    import Header from './components/Include/Header.vue';
    import Footer from './components/Include/Footer.vue';
    import { useRoute } from 'vue-router';
    import { computed } from 'vue';

        export default{
          name:'App',
          components:{
            Header,Footer
          },setup() {
    const route = useRoute();
    
    // Computed property to determine if Header should be shown
    const showHeader = computed(() => {
      return route.name !== 'login' && route.name !== 'register';
    });

    return {
      showHeader
    };
  }
        }
    </script>


    <style scoped>

    </style>
