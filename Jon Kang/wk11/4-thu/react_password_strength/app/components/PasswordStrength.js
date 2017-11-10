import React from 'react'

export default class PasswordStrength extends React.Component
{
  constructor(props)
  {
    super(props)
    this.onPasswordChange = this.onPasswordChange.bind(this)
    this.state =
    {
      content: '',
      defaultStrength: 'Type something...'
    }
  }

  onPasswordChange(event)
  {
    this.setState({ content: event.target.value })
  }

  render()
  {
    // Add Regex conditions, start with 1 each
    // Add the Password Strength object
    const passwordField = this.state.content
    var passwordStrength = this.state.defaultStrength
    var score = 0

    if (passwordField.match(/[A-Z]/))
    {
      score++
      console.log('Password has uppercase letter');
    }
    if (passwordField.match(/[a-z]/))
    {
      score++
      console.log('Password has lowercase letter');
    }
    if (passwordField.match(/[0-9]/))
    {
      score++
      console.log('Password has number');
    }
    if (passwordField.match(/[^a-zA-Z0-9]/))
    {
      score++
      console.log('Password has a special character');
    }
    if (passwordField.length >= 8)
    {
      score++
      console.log('Password is 8 or more characters long');
    }

    switch (score)
    {
      case 0:
        passwordStrength = 'Type something...'
        break;
      case 1:
        passwordStrength = 'Poor. You can do better than that...';
        break;
      case 2:
        passwordStrength = 'Weak. Are you even trying?';
        break;
      case 3:
        passwordStrength = 'Moderate. Getting somewhere'
        break;
      case 4:
        passwordStrength = 'Good. Almost there';
        break;
      case 5:
        passwordStrength = 'Strong. Good luck remembering it';
        break;
    }

    return (
      <div>
        <input type="password" onChange={this.onPasswordChange} placeholder="Type in your password" />
        <div>
          <div></div>
        </div>
        <span>{passwordStrength} | </span>
        <span>Score: {score} | </span>
        <span>Length: {passwordField.length}</span>
      </div>
    )
  }

}