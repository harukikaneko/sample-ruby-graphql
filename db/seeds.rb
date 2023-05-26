# frozen_string_literal: true

User.create(name: 'John Doe', email: 'johndoe@example.com')
User.create(name: 'Jane Doe', email: 'janedoe@example.com')
User.create(name: 'John Smith', email: 'johnsmith@example.com')

Wine.create(name: 'Barolo', user: User.first)
Wine.create(name: 'Chianti', user: User.first)
Wine.create(name: 'Nebbiolo', user: User.first)
Wine.create(name: 'Pinot Noir', user: User.second)
Wine.create(name: 'Sauvignon Blanc', user: User.second)
Wine.create(name: 'Chardonnay', user: User.third)
