@Statistic = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.statistic.player_id
      React.DOM.td null, @props.statistic.goal
      React.DOM.td null, @props.statistic.shot
      React.DOM.td null, @props.statistic.on_target
      React.DOM.td null, @props.statistic.game_time
      React.DOM.td null, @props.statistic.assist
      React.DOM.td null, passFormat(@props.statistic.pass)