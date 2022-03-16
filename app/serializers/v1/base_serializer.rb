module V1
    class BaseSerializer
        def self.serialize_items(data)
            return {} if data.empty?

            items = []
            data.each do |item|
                serialized_item = serialize_item(item)
                items << serialized_item
            end

            {
                'object': 'list',
                'url': url,
                'has_more': has_more(data),
                'data': items
            }
        end

        def self.serialize_item(item)
            item_attributes(item)
        end

        def url
            'base_url'
        end

        def item_attributes(item)
            {}
        end

        def self.has_more(data)
            item_class = data.first.class
            id = item_class.find_by(id: data.last.id)
            return item_class.where('id > ?', id).limit(1).count.positive?
        end
    end
end