class HelloController < ApplicationController
  layout 'hello'

  def index
    @header = 'layout sample'
    @footer = 'copyright YutoTeranishi 2020.'


    if request.post? then
      @title = 'Result'
      if params['input1'] != nil then
        @msg = 'you typed:'+ params['input1'] + '.'
        @value = params['input1']
      else
        @msg = 'type text'
        @value = ''
      end

      if params['check1'] then
        @msg_checkBox = 'you checked'
      else
        @msg_checkBox = 'not checked'
      end

      if params['r1'] then
        @msg_radioBox = 'you selected:'+ params['r1']
      else
        @msg_radioBox = 'not selected...'
      end

      if params['s1'] then
        @msg_selectForm = 'you selected:'
        for val in params['s1']
          @msg_selectForm += val + ' '
        end
      else
        @msg_selectForm = 'not selected...'
      end

    else
      @title = 'New Layout'
      @msg = 'type text'
      @value = ''
      @msg_checkBox='check it...'
      @msg_radioBox = 'select radio button...'
      @msg_selectForm = 'select List...'
    end
  end

end
