require 'spec_helper'

module Codebreaker

  describe Game do
    before(:each) do
      @output = double('output').as_null_object
      @game = Game.new(@output)
    end

    #let(:output) { double('output').as_null_object }
    #let(:game) { Game.new(output) }

    describe "#start" do
      it "sends a welcome message" do
        @output.should_receive(:puts).with('Welcome to CodeBreaker!')
        @game.start('1234')
      end

      it "prompts for the first guess" do
        @output.should_receive(:puts).with('Enter a guess:')
        @game.start('1234')
      end
    end

    describe "#guess" do

      before(:each) do
        @code = '1234'
        @game.start(@code)
      end

      context "when passed a string of numbers" do
        it "sends the mark to output" do
          @output.should_receive(:puts).with('++++')
          @game.guess(@code)
        end
      end

      context "when passed the keyword 'quit'" do
        it "calls the #quit method" do
          @game.should_receive(:quit)
          @game.guess('quit')
        end
      end
    end

    describe "#quit" do
      it "it shows the code" do
        @output.should_receive(:puts).with("The code was #{@code}")
        @game.quit
      end

      it "it thanks the player for playing" do
        @output.should_receive(:puts).with("Thanks for playing!")
        @game.quit
      end
    end
  end
end
