import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'
import Question from '../question.vue';

const colors = {
  black: "黒",
  white: "白",
  red: "赤",
  orange: "オレンジ",
  yellow: "黄",
  green: "緑",
  blue: "青",
  purple: "紫",
  brown: "茶",
  gray: "灰色",
  pink: "ピンク"
}

Vue.filter('buttonName', (value) => {
  value = parseInt(value) + 1;
  return "answer[q" + value + "]";
})

Vue.filter('buttonId', (value, color) => {
  value = parseInt(value) + 1;
  return "answer_q" + value + "_" + color;
})

Vue.component('question', {
  template: `
      <div class="questions_list" :class="radio_value">
        <h2 class="questions_list__q">{{ question }}</h2>
        <ul class="button_list">
          <li v-for="(item, index) in colors" class="button_list__button" :class="index">
            <label :for="buttonId(number, index)">{{ item }}</label>
            <input type="radio" :value="index" :name="number | buttonName" :id="buttonId(number, index)" v-model="radio_value" />
          </li>
        </ul>
      </div>
  `,
  props: ['question', 'number'],
  data: function() {
    return {
      radio_value: '',
      colors: colors
    }
  },
  methods: {
    buttonId: function(number, color) {
      number = parseInt(number) + 1;
      return "answer_q" + number + "_" + color;
    }
  }
})

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#questions',
  })
})
