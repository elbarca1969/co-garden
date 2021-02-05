class Subject < ActiveHash::Base
  self.data = [
    { id: 1, name: '教　科' },
    { id: 2, name: '国　語' },
    { id: 3, name: '数　学' },
    { id: 4, name: '社　会' },
    { id: 5, name: '理　科' },
    { id: 6, name: '英　語' }
  ]
end
