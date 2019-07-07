module.exports =
  deactivate: ->
    @toolBar?.removeItems()

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'tool-bar-atom'

    if atom.packages.loadedPackages['atom-notes']
      @toolBar.addButton
        'icon': 'file'
        'callback': 'atom-notes:toggle'
        'tooltip': 'Open Note'
        'iconset': 'fa'

    @toolBar.addButton
      'icon': 'save'
      'callback': 'core:save'
      'tooltip': 'Save File'
      'iconset': 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      'iconset': 'fa'
      'icon': 'arrows-alt'
      'tooltip': 'Toggle Fullscreen'
      'callback': 'window:toggle-full-screen'

    @toolBar.addButton
      'icon': 'sitemap'
      'callback': 'tree-view:toggle'
      'tooltip': 'Toggle Sidebar'
      'iconset': 'fa'

    if atom.packages.loadedPackages['dark-mode']
      @toolBar.addButton
        'icon': 'eye'
        'iconset': 'fa'
        'callback': 'dark-mode:toggle'
        'tooltip': 'Toggle Dark/Light Mode'

    @toolBar.addSpacer()

    @toolBar.addButton
      'icon': 'bars'
      'callback': 'command-palette:toggle'
      'tooltip': 'Toggle Command Palette'
      'iconset': 'fa'

    @toolBar.addButton
      'icon': 'cog'
      'iconset': 'fa'
      'callback': 'settings-view:open'
      'tooltip': 'Open Settings View'

    @toolBar.addSpacer()

    if atom.packages.loadedPackages['markdown-preview-plus']
      @toolBar.addButton
        'icon': 'markdown'
        'callback': 'markdown-preview-plus:toggle'
        'tooltip': 'Markdown Preview'

    if atom.packages.loadedPackages['markdown-preview-enhanced']
      @toolBar.addButton
        'icon': 'markdown'
        'callback': 'markdown-preview-enhanced:toggle'
        'tooltip': 'Markdown Preview'

    if atom.packages.loadedPackages['markdown-writer']
      @toolBar.addButton
        'icon': 'link'
        'iconset': 'ion'
        'callback': 'markdown-writer:insert-link'
        'tooltip': 'Insert Link'
    if atom.packages.loadedPackages['markdown-helper']
      @toolBar.addButton
        'icon': 'link'
        'iconset': 'ion'
        'callback': 'markdown-helper:insert-link'
        'tooltip': 'Insert Link'
