class TxImage < ActiveRecord::Base
    def self.save(egatsn, upload)
    m =  upload.original_filename.to_s.split(".")
    name = egatsn.to_s + "." + m[1].to_s

    directory = "public/data"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload.tempfile.read) }
  end

end
