class Grade < ActiveHash::Base
  self.data = [
    { id: 1, name: '学　年' },
    { id: 2, name: '中　１' },
    { id: 3, name: '中　２' },
    { id: 4, name: '中　３' },
    { id: 5, name: '高　１' },
    { id: 6, name: '高　２' },
    { id: 7, name: '高　３' }
  ]
end
