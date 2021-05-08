<template>
  <div class="pt-4 font-mono flex justify-center items-center">Our Products:</div>
  <div class="showresultp">
    <div class="showResult">
      <ul v-for="form in formResults" :key="form.id">
        <bor-der>
          <li>
            <p class="font-mono text-sm">{{ form.name }}</p>
            <p class="font-mono text-sm">{{ form.date }}</p>
            <p class="font-mono text-sm">{{ form.description }}</p>
            <p class="font-mono text-sm">{{ form.brand }}</p>
            <p class="font-mono text-sm">{{ form.color }}</p>
            <p class="font-mono text-sm">{{ form.price }}</p>

            <button @click="showFormResults(form)" class="editIcon">
              <img src="../assets/pencil.png" />
            </button>

            <button @click="deleteFormResults(form.id)" class="deleteIcon">
              <img src="../assets/xmark.png" />
            </button>
          </li>
        </bor-der>
      </ul>
    </div>
  </div>

  <li-ne></li-ne>

  <button v-show="!addedit" v-on:click="toggleDone()" class="addeditbutton">Add/Edit</button>
  <div v-show="addedit">
    <div class="addeditp">
      <form @submit.prevent="submitForm">
        <bor-der>
          <div class="body">
            <label>Product Name:</label>
            <input
              type="text"
              id="nameForm"
              v-model="nameForm"
              @blur="validateNameForm"
              class="mt-2 h-8 w-80 rounded border-black border-2"
            />
            <p v-if="invalidNameForm" class="text-black pt-4">
              <b>Please write something!!!</b>
            </p>
            <br />

            <label>Manufactured Date:</label>
            <input
              type="date"
              id="dateForm"
              v-model="dateForm"
              @blur="validateDateForm"
              class="mt-2 h-8 w-80 rounded border-black border-2"
            />
            <p v-if="invalidDateForm" class="text-black pt-4">
              <b>Please choose something!!!</b>
            </p>
            <br />

            <label>Product Description:</label>
            <textarea
              id="desForm"
              v-model="desForm"
              @blur="validateDesForm"
              class="mt-2 h-8 w-80 rounded border-black border-2"
            ></textarea>

            <p v-if="invalidDesForm" class="text-black pt-4">
              <b>Please write something!!!</b>
            </p>
            <br />

            <label>Brand:</label>
            <select
              id="brandForm"
              v-model="brandForm"
              @blur="validateDateForm"
              class="mt-2 h-8 w-80 rounded border-black border-2"
            >
              <option disabled value>Please select one</option>
              <option>Corsair</option>
              <option>Gskill</option>
              <option>Kingston</option>
            </select>

            <p v-if="invalidBrandForm" class="text-black pt-4">
              <b>Please choose something!!!</b>
            </p>
            <br />

            <label>Color:</label>
            <input
              type="checkbox"
              id="black"
              value="Black"
              class="h-4 w-4"
              v-model="selectColor"
              @blur="validateColorForm"
            />
            <label for="black" class="text-white bg-black border border-black rounded p-1 m-2">Black</label>
            <input
              type="checkbox"
              id="white"
              value="White"
              class="h-4 w-4"
              v-model="selectColor"
              @blur="validateColorForm"
            />
            <label for="white" class="bg-white border border-black rounded p-1 m-2">White</label>
            <input
              type="checkbox"
              id="silver"
              value="Silver"
              class="h-4 w-4"
              v-model="selectColor"
              @blur="validateColorForm"
            />
            <label for="silver" class="bg-silver border border-black rounded p-1 m-2">Silver</label>
            <br />

            <span>Select color: {{ selectColor }}</span>

            <p v-if="invalidColorForm" class="text-black pt-4">
              <b>Please choose something!!!</b>
            </p>
            <br />

            <label>Product Price:</label>
            <input
              type="text"
              id="priceForm"
              v-model="priceForm"
              @blur="validatePriceForm"
              class="mt-2 h-8 w-80 rounded border-black border-2"
            />
            <p v-if="invalidPriceForm" class="text-black pt-4">
              <b>Please write something!!!</b>
            </p>
          </div>

          <button class="submitbutton" @click="validForm">Submit</button>
        </bor-der>
      </form>
    </div>
    <button v-on:click="toggleDone()" class="cancelbutton">Cancel</button>
  </div>
</template>
  
<script>


export default {
  //name: 'AddEdit',
  components: {

  },
  //props: ['showProduct'],
  //emits: ['show-product'],

  data() {
    return {
      addedit: false,
      nameForm: '',
      desForm: '',
      dateForm: Date,
      brandForm: null,
      priceForm: '',
      invalidNameForm: false,
      invalidDesForm: false,
      invalidBrandForm: false,
      invalidColorForm: false,
      invalidDateForm: false,
      invalidPriceForm: false,
      formResults: [],
      selectColor: [],
      editForm: false,
      editFormId: '',
      url: 'http://localhost:4000/formResults'
    }
  },

  methods: {
    //showProduct(){
    //this.$emit('show-product',
    //nameForm,
    //desForm,
    //brandForm,    
    //invalidNameForm,
    //invalidDesForm,
    //invalidBrandForm,
    //invalidColorForm,
    //formResults,
    //checkColor,
    //url)
    //},

    toggleDone() {
      this.addedit = !this.addedit
    },

    submitForm() {
      this.invalidNameForm = this.nameForm === '' ? true : false
      this.invalidDesForm = this.desForm === '' ? true : false
      this.invalidBrandForm = this.brandForm === null ? true : false
      this.invalidColorForm = this.checkColor === null ? true : false
      this.invalidDateForm = this.dateForm === Date ? true : false
      this.invalidPriceForm = this.priceForm === '' ? true : false
      console.log(`nameform: ${this.nameForm}
                  desform: ${this.desForm}
                  brandform: ${this.brandForm}
                  checkColor: ${this.checkColor}
                  dateForm: ${this.dateForm}
                  priceForm: ${this.priceForm}`)

      if (this.nameForm !== '' &&
        this.desForm !== '' &&
        this.brandForm !== null &&
        this.checkColor !== [] &&
        this.dateForm !== Date &&
        this.priceForm !== '') {
        //this.formResults.push({
        //name: this.form,
        //description: this.form2
        //})

        //Edit-2
        if (this.editForm) {
          this.editFormResults({
            id: this.editFormId,
            name: this.nameForm,
            description: this.desForm,
            brand: this.brandForm,
            color: this.selectColor,
            date: this.dateForm,
            price: this.priceForm
          })
        }
        else {
          //Post-2
          this.addForm({
            name: this.nameForm,
            description: this.desForm,
            brand: this.brandForm,
            color: this.selectColor,
            date: this.dateForm,
            price: this.priceForm
          })
        }
      }
      this.nameForm = '',
        this.desForm = '',
        this.brandForm = null,
        this.selectColor = [],
        this.dateForm = Date,
        this.priceForm = ''
      //console.log(`name: ${this.formResults[0].name} description: ${this.formResults[0].description}`)
    },

    validateNameForm() {
      this.invalidNameForm = this.nameForm === '' ? true : false
    },

    validateDesForm() {
      this.invalidDesForm = this.desForm === '' ? true : false
    },

    validateBrandForm() {
      this.invalidBrandForm = this.brandForm === null ? true : false
    },

    validateColorForm() {
      this.invalidColorForm = this.selectColor === null ? true : false
    },

    validateDateForm() {
      this.invalidDateForm = this.dateForm === Date ? true : false
    },

    validatePriceForm() {
      this.invalidPriceForm = this.priceForm === '' ? true : false
    },

    validForm() {
      if (this.invalidNameForm &&
        this.invalidDesForm &&
        this.invalidBrandForm &&
        this.invalidColorForm &&
        this.invalidDateForm &&
        this.invalidPriceForm) {
        return
      }
      alert("Submit Complete")
    },



    //Post
    async addForm(newForm) {
      try {
        const res = await fetch(this.url, {
          method: 'POST',
          headers: {
            'content-type': 'application/json'
          },
          body: JSON.stringify({
            name: newForm.name,
            date: newForm.date,
            description: newForm.description,
            brand: newForm.brand,
            color: newForm.color,
            price: newForm.price
          })
        })
        const resdata = await res.json()
        this.formResults = [...this.formResults, resdata]
      }
      catch (error) {
        console.log(`addForm False!!! ${error}`)
      }
    },

    //Get
    async getFormResults() {
      try {
        const res = await fetch(this.url)
        const resdata = await res.json()
        return resdata
      }
      catch (error) {
        console.log(`getFormResults False!!! ${error}`)
      }
    },

    //Delete
    async deleteFormResults(deleteForm) {
      try {
        await fetch(`${this.url}/${deleteForm}`, {
          method: 'DELETE'
        })
        this.formResults = this.formResults.filter(form => form.id !== deleteForm)
      }
      catch (error) {
        console.log(`deleteEncourageResults False!!! ${error}`)
      }
    },

    //Edit
    showFormResults(beforeForm) {
      this.editForm = true
      this.editFormId = beforeForm.id
      this.nameForm = beforeForm.name
      this.desForm = beforeForm.description
      this.brandForm = beforeForm.brand
      this.selectColor = beforeForm.color
      this.dateForm = beforeForm.date
      this.priceForm = beforeForm.price
    },

    //const jsonPictureProduct = JSON.stringify(pictureProduct)
    //const blob = new Blob([jsonPictureProduct], {
    //type: 'application/json'
    //})

    //let formData = new FormData()
    //formData.append('file', pictureProduct.imageFile, pictureProduct,image)
    //formData.append('pictureProduct', blob)

    async editFormResults(afterForm) {
      try {
        const res = await fetch(`${this.url}/${afterForm.id}`, {
          method: 'PUT',
          headers: {
            'content-type': 'application/json'
          },
          body: JSON.stringify({
            name: afterForm.name,
            date: afterForm.date,
            description: afterForm.description,
            brand: afterForm.brand,
            color: afterForm.color,
            price: afterForm.price
          })
        })
        const resdata = await res.json()
        this.formResults = this.formResults.map(formResults => formResults.id === afterForm.id
          ? { ...formResults, data: resdata.data } : formResults)

        this.editForm = false,
          this.editFormId = '',
          this.nameForm = '',
          this.desForm = '',
          this.brandForm = null,
          this.selectColor = [],
          this.dateForm = Date,
          this.priceForm = ''
      }
      catch (error) {
        console.log(`editFormResults False!!! ${error}`)
      }
    }

  },

  //Get-2
  async created() {
    this.formResults = await this.getFormResults()
  }
}
</script>