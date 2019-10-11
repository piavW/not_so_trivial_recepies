require("rails-ujs").start()
require("turbolinks").start()

const initiateStripe = (stripeForm) => {
  const stripe = Stripe('public_key')
  const elements = stripe.elements()
  const card = elements.create('card')
  card.mount('#card-element')
}

document.addEventListener('turbolinks:load', () => {
  let stripeForm = document.getElementById('charge_form')
  if (stripeForm) {
    initiateStripe(stripeForm)
  }
})