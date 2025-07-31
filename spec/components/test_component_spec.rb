# frozen_string_literal: true

require "rails_helper"

RSpec.describe TestComponent, type: :component do
  it "renders something useful" do
    expect(
      render_inline(described_class.new).css("span").to_html
    ).to include(
      "Hello, components!"
    )
  end

  it "renders a form field" do
    render_inline(described_class.new)

    expect(rendered_content).to eq("<span>Hello, components!</span>")
  end
end
