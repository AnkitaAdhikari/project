module FileDestroyerCallback
    def self.after_destroy(file)
      if File.exist?(file.filepath)
        File.delete(file.filepath)
      end
    end
  end
  