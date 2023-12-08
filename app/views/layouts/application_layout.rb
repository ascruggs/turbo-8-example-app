# frozen_string_literal: true

class ApplicationLayout < ApplicationView
	include Phlex::Rails::Layout

	def template(&)
		doctype

		html do
			head do
				title { "Turbo8" }
				meta(name: "viewport", content: "width=device-width,initial-scale=1")
				csrf_meta_tags
				csp_meta_tag
				meta(name: "turbo-refresh-method", content: :morph)
				meta(name: "turbo-refresh-scroll", content: :preserve)	
				stylesheet_link_tag "application", "data-turbo-track": "reload"
				javascript_include_tag "application", "data-turbo-track": "reload", defer: true
			end

			body(&)
		end
	end
end
