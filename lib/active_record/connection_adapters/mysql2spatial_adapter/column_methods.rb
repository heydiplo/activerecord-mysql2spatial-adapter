module ActiveRecord
  module ConnectionAdapters
    module Mysql2SpatialAdapter
      module ColumnMethods
        def geometry(name, options = {})
          column(name, :geometry, options)
        end
        alias_method :spatial, :geometry

        def geometrycollection(name, options = {})
          column(name, :geometry_collection, options)
        end

        def linestring(name, options = {})
          column(name, :linestring, options)
        end

        def multilinestring(name, options = {})
          column(name, :multilinestring, options)
        end

        def point(name, options = {})
          column(name, :point, options)
        end

        def multipoint(name, options = {})
          column(name, :multipoint, options)
        end

        def polygon(name, options = {})
          column(name, :polygon, options)
        end

        def multipolygon(name, options = {})
          column(name, :multipolygon, options)
        end
      end

      ConnectionAdapters::TableDefinition.send(:include, ColumnMethods)
    end
  end
end
