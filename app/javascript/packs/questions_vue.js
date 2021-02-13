import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'
import Question from '../question.vue';

Vue.component('question', {
  template: `
      <div class="questions_list">
 {{ radio_value }}
        <h2 class="questions_list__q">{{ question }}</h2>

        <span class="questions_list__button black">
          <label>黒</label>
          <input type="radio" value="black" name="answer[q1]" id="answer_q1_black" v-model="radio_value" />
        </span>

      </div>
  `,
  props: ['question', 'number'],
  data: {
    radio_value: ''
  }
})


document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#questions',
    data: {
      colors: {
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
      },
      radio_value: ''
    },
  })
})
