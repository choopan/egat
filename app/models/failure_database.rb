class FailureDatabase < ActiveRecord::Base
	def self.get_failure_egatsn(egatsn)
	where("egatsn = '#{egatsn}'")
    	rescue Exception
      	return nil
  	end

	def self.get_failure_id(id)
		where("id = '#{id}'").first
    		rescue Exception
      		return nil
  	end
	
    def self.graph4
      result   = select("failuregroup,  count(*) AS numtx").group("failuregroup")
      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.failuregroup
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end

    def self.graph5
      result   = select("failurepart,  count(*) AS numtx").group("failurepart")
      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.failurepart
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end

    def self.graph6
      result   = select("failuredetail,  count(*) AS numtx").group("failuredetail")
      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.failuredetail
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end

    def self.graph7
      result   = select("failurereason,  count(*) AS numtx").group("failurereason")
      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.failurereason
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end

    def self.graph8
      result   = select("failuremode,  count(*) AS numtx").group("failuremode")
      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.failuremode
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end

    def self.graph9
      result   = find_by_sql("SELECT A.brand_id AS brand_id, count(*) AS numtx FROM failure_databases LEFT OUTER JOIN \
                              (SELECT distinct brand_id, egatsn from transformer) A  ON failure_databases.egatsn = A.egatsn group by A.brand_id")
     

      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = ManufacturerTx.getname(i.brand_id)
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end

    def self.graph10
      result   = find_by_sql("SELECT region, count(*) AS numtx FROM failure_databases LEFT OUTER JOIN \
                              (SELECT distinct egatsn, region from transformer LEFT OUTER JOIN stations ON \
                              transformer.station = stations.name) AS A  ON failure_databases.egatsn = A.egatsn group by region")

      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.region
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end

    def self.graph11(start_year, end_year)

      result   = find_by_sql("SELECT DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), first_energize)), '%Y')+0 AS noyear, count(*) AS numtx FROM `failure_databases`\
                              LEFT OUTER JOIN \
                              (SELECT distinct egatsn, first_energize from transformer) A ON failure_databases.egatsn = A.egatsn \
                              WHERE DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), first_energize)), '%Y')+0 >= #{start_year} AND \
                                    DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), first_energize)), '%Y')+0  <= #{end_year} GROUP BY  noyear")

      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.noyear
            graphdata[n][1] = i.numtx
            n = n + 1
            numtotal = numtotal + i.numtx
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end




end
