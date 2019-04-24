# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/clean"

task default: %w[spec rubocop]

CLEAN.include "**/*.o", "**/*.so", "**/*.bundle", "**/*.jar", "pkg", "tmp"
