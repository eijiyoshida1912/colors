import Vue from 'vue/dist/vue.esm'

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

Vue.component('question', {
  template: `
      <div class="questions_list" :class="radio_value" v-on:click="changeButton">
        <h2 class="questions_list__q">{{ question }}</h2>
        <ul class="button_list" v-show="!radio_value">
          <li v-for="(item, index) in colors" class="button_list__button" :class="index">
            <label :for="buttonId(number, index)">{{ item }}</label>
            <input type="radio" :value="index" :name="number | buttonName" :id="buttonId(number, index)" v-model="radio_value" />
          </li>
        </ul>
      </div>
  `,
  props: ['question', 'number', 'answer'],
  data: function() {
    return {
      radio_value: this.$props.answer,
      colors: colors,
    }
  },
  methods: {
    buttonId: function(number, color) {
      number = parseInt(number) + 1;
      return "answer_q" + number + "_" + color;
    },
    changeButton: function() {
      this.radio_value = false;
    },
  }
})

new Vue({
  el: '#questions'
})
