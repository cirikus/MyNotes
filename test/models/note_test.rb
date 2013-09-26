require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  test "search number" do
    notes = Note.search('premier')
    assert_equal 1, notes.length
  end

  test "search title" do
    note1 = notes(:one)
    notes = Note.search(note1.title)
    assert_equal note1.title, notes[0].title
  end

  test "search content" do
    note1 = notes(:one)
    notes = Note.search(note1.title)
    assert_equal note1.content, notes[0].content
  end

end
