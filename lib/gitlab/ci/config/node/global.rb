module Gitlab
  module Ci
    class Config
      module Node
        ##
        # This class represents a global entry - root node for entire
        # GitLab CI Configuration file.
        #
        class Global < Entry
          include Configurable

          allow_node :before_script, Script,
            description: 'Script that will be executed before each job.'

          allow_node :image, Image,
            description: 'Docker image that will be used to execute jobs.'

          allow_node :services, Services,
            description: 'Docker images that will be linked to the container.'

          allow_node :after_script, Script,
            description: 'Script that will be executed after each job.'
        end
      end
    end
  end
end
