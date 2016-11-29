@Statistics = React.createClass
  getInitialState: ->
    statistics: @props.data
  getDefaultProps: ->
    statistics: []
  render: ->
    React.DOM.div
      className: 'statistics'
      React.DOM.h2
        className: 'title'
        'статистика игроков'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,            
            React.DOM.th null, 'Игрок'
            React.DOM.th null, 'Голы'
            React.DOM.th null, 'Удары'
            React.DOM.th null, 'Удары в створ'
            React.DOM.th null, 'Время на поле'
            React.DOM.th null, 'Голевые передачи'
            React.DOM.th null, 'Точность передач'
        React.DOM.tbody null,
          for statistic in @state.statistics
            if statistic.game_id = 2
              React.createElement Statistic, key: statistic.id, statistic: statistic