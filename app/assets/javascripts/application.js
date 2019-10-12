require("rails-ujs").start()
require("turbolinks").start()

const initiateStripe = (stripeForm) => {
  const stripe = Stripe(public_key)
  const elements = stripe.elements()
  const cardNumber = elements.create('cardNumber')
  const cardExpiry = elements.create('cardExpiry')
  const cardCVC = elements.create('cardCvc')
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