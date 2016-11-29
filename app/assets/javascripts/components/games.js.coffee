@Games = React.createClass
  getInitialState: ->
    games: @props.data
  getDefaultProps: ->
    games: []
  render: ->
    React.DOM.div
      className: 'games'
      React.DOM.h2
        className: 'title'
        'РФПЛ'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Матчи'
        React.DOM.tbody null,
          for game in @state.games
            React.createElement Game, key: game.id, game: game
