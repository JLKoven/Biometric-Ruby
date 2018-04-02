import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

document.addEventListener('DOMContentLoaded', () => {


  const node = document.getElementById('general_stats_data')
  console.log("hi this is the console")
  const data = JSON.parse(node.getAttribute('data'))  ReactDOM.render(
    <General_stats general_stats={data} />,
    document.body.appendChild(document.createElement('div')),
  )
})

//man I don't know about this
//where is this supposed to be loaded again?
//hello_react got loaded in the main index view, I just want this in the general_stat view
