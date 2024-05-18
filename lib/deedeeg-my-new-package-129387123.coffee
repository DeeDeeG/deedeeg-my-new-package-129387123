DeedeegMyNewPackage129387123View = require './deedeeg-my-new-package-129387123-view'
{CompositeDisposable} = require 'atom'

module.exports = DeedeegMyNewPackage129387123 =
  deedeegMyNewPackage129387123View: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @deedeegMyNewPackage129387123View = new DeedeegMyNewPackage129387123View(state.deedeegMyNewPackage129387123ViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @deedeegMyNewPackage129387123View.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'deedeeg-my-new-package-129387123:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @deedeegMyNewPackage129387123View.destroy()

  serialize: ->
    deedeegMyNewPackage129387123ViewState: @deedeegMyNewPackage129387123View.serialize()

  toggle: ->
    console.log 'DeedeegMyNewPackage129387123 was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
