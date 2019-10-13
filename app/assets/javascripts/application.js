require("@rails/ujs").start()
require("turbolinks").start()

const initiateStripe = (stripeForm) => {
  const stripe = Stripe('pk_test_uR9GcPekr9XBwQaKt3OnPuxe00Drts28Dd')
  const elements = stripe.elements()
  let cardNumber = elements.create('cardNumber')
  let cardExpiry = elements.create('cardExpiry')
  let cardCVC = elements.create('cardCvc')
  cardNumber.mount('#card-number')
  cardExpiry.mount('#card-expiry')
  cardCVC.mount('#card-cvc')

  stripeForm.addEventListener('submit', () => {
    event.preventDefault()
    stripe.createToken(cardNumber, cardExpiry, cardCVC).then((result) => {
      const hiddenField = document.createElement('input')
      hiddenField.setAttribute('type', 'hidden')
      hiddenField.setAttribute('name', 'strikeToken')
      hiddenField.setAttribute('value', result.token.id)
      stripeForm.appendChild(hiddenField)
      stripeForm.submit()
    })
  })
}
document.addEventListener('turbolinks:load', () => {
  let stripeForm = document.getElementById('charge_form')
  if (stripeForm) {
    initiateStripe(stripeForm)
  }
})

// require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()

// const initiateStripe = (stripeForm) => {
//   const stripe = Stripe('pk_test_uR9GcPekr9XBwQaKt3OnPuxe00Drts28Dd')
//   const elements = stripe.elements()
//   const card = elements.create('card')
//   card.mount('#card-element')
// }

// document.addEventListener('turbolinks:load', () => {
//   let stripeForm = document.getElementById('charge_form')
//   if (stripeForm) {
//     initiateStripe(stripeForm)
//   }
// })