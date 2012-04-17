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
            graphdata[n][0] = Brand.getname(i.brand_id)
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

      result   = find_by_sql("SELECT DATEDIFF(year, first_energize, GETDATE()) AS noyear, count(*) AS numtx \
                              FROM failure_databases LEFT OUTER JOIN \
                              (SELECT distinct egatsn, first_energize from transformer) A ON \
                              failure_databases.egatsn = A.egatsn \
                              WHERE DATEDIFF(year, first_energize, GETDATE()) >= #{start_year} AND \
                              DATEDIFF(year, first_energize, GETDATE()) <= #{end_year} GROUP BY  DATEDIFF(year, first_energize, GETDATE())")

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


  def self.graph_numfailure_per_region(start_year, end_year, area, station, manufacturer, transformer, environment, fstatus, detail, group, part, mode, reason, manage)
      query = "SELECT region, count(*) as numfailure  \
                              FROM failure_databases LEFT OUTER JOIN transformer \
                              ON failure_databases.egatsn = transformer.egatsn \
                              LEFT outer join stations ON transformer.station = stations.name"
                              #LEFT OUTER JOIN brands ON transformer.brand_id = brands.id"
                              
      whereclause = 0
      if start_year != "" and !start_year.nil?
        query = query + " WHERE DATEDIFF(year, first_energize, GETDATE()) >= #{start_year}"
        whereclause = 1
      end
      
      if end_year != "" and !end_year.nil? and end_year != "0" 
        if whereclause == 0
          query = query + " WHERE DATEDIFF(year, first_energize, GETDATE()) <= #{end_year}"
          whereclause = 1
        else
          query = query + " AND DATEDIFF(year, first_energize, GETDATE()) <= #{end_year}"          
        end
      end

      if area != "" and !area.nil?  
        if whereclause == 0
          query = query + " WHERE region='#{area}'"
          whereclause = 1
        else
          query = query + " AND region='#{area}'"          
        end
      end

      if station != "" and !station.nil? 
        if whereclause == 0
          query = query + " WHERE station='#{station}'"
          whereclause = 1
        else
          query = query + " AND station='#{station}'"          
        end
      end

      if manufacturer != "" and !manufacturer.nil? 
        if whereclause == 0
          query = query + " WHERE brand_id='#{manufacturer}'"
          whereclause = 1
        else
          query = query + " AND brand_id='#{manufacturer}'"          
        end
      end

      if transformer != "" and !transformer.nil? 
        if whereclause == 0
          query = query + " WHERE egatsn='#{transformer}'"
          whereclause = 1
        else
          query = query + " AND egatsn='#{transformer}'"          
        end
      end

      if environment != "" and !environment.nil? 
        if whereclause == 0
          query = query + " WHERE environment='#{environment}'"
          whereclause = 1
        else
          query = query + " AND environment='#{environment}'"          
        end
      end

      if fstatus != "" and !fstatus.nil? 
        if whereclause == 0
          query = query + " WHERE failurestatus='#{fstatus}'"
          whereclause = 1
        else
          query = query + " AND failurestatus='#{fstatus}'"          
        end
      end
      
      if detail != "" and !detail.nil? 
        if whereclause == 0
          query = query + " WHERE failuredetail='#{detail}'"
          whereclause = 1
        else
          query = query + " AND failuredetail='#{detail}'"          
        end
      end

      if group != "" and !group.nil? 
        if whereclause == 0
          query = query + " WHERE failuregroup='#{group}'"
          whereclause = 1
        else
          query = query + " AND failuregroup='#{group}'"          
        end
      end
      
      if part != "" and !part.nil? 
        if whereclause == 0
          query = query + " WHERE failurepart='#{part}'"
          whereclause = 1
        else
          query = query + " AND failurepart='#{part}'"          
        end
      end
     
      if mode != "" and !mode.nil? 
        if whereclause == 0
          query = query + " WHERE failuremode='#{mode}'"
          whereclause = 1
        else
          query = query + " AND failuremode='#{mode}'"          
        end
      end
      
           
      if reason != "" and !reason.nil? 
        if whereclause == 0
          query = query + " WHERE failurereason='#{reason}'"
          whereclause = 1
        else
          query = query + " AND failurereason='#{reason}'"          
        end
      end
      
      if manage != "" and !manage.nil? 
        if whereclause == 0
          query = query + " WHERE manage='#{manage}'"
          whereclause = 1
        else
          query = query + " AND manage='#{manage}'"          
        end
      end

      query = query + " GROUP BY region"
      result = find_by_sql(query
      )
      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.region
            graphdata[n][1] = i.numfailure
            n = n + 1
            numtotal = numtotal + i.numfailure
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end

def self.graph_numfailure_per_station(start_year, end_year, area, station, manufacturer, transformer, environment, fstatus, detail, group, part, mode, reason, manage)
      query = "SELECT station, count(*) as numfailure  \
                              FROM failure_databases LEFT OUTER JOIN transformer \
                              ON failure_databases.egatsn = transformer.egatsn \
                              LEFT outer join stations ON transformer.station = stations.name"
                              #LEFT OUTER JOIN brands ON transformer.brand_id = brands.id"
                              
      whereclause = 0
      if start_year != "" and !start_year.nil?
        query = query + " WHERE DATEDIFF(year, first_energize, GETDATE()) >= #{start_year}"
        whereclause = 1
      end
      
      if end_year != "" and !end_year.nil? and end_year != "0" 
        if whereclause == 0
          query = query + " WHERE DATEDIFF(year, first_energize, GETDATE()) <= #{end_year}"
          whereclause = 1
        else
          query = query + " AND DATEDIFF(year, first_energize, GETDATE()) <= #{end_year}"          
        end
      end

      if area != "" and !area.nil?  
        if whereclause == 0
          query = query + " WHERE region='#{area}'"
          whereclause = 1
        else
          query = query + " AND region='#{area}'"          
        end
      end

      if station != "" and !station.nil? 
        if whereclause == 0
          query = query + " WHERE station='#{station}'"
          whereclause = 1
        else
          query = query + " AND station='#{station}'"          
        end
      end

      if manufacturer != "" and !manufacturer.nil? 
        if whereclause == 0
          query = query + " WHERE brand_id='#{manufacturer}'"
          whereclause = 1
        else
          query = query + " AND brand_id='#{manufacturer}'"          
        end
      end

      if transformer != "" and !transformer.nil? 
        if whereclause == 0
          query = query + " WHERE egatsn='#{transformer}'"
          whereclause = 1
        else
          query = query + " AND egatsn='#{transformer}'"          
        end
      end

      if environment != "" and !environment.nil? 
        if whereclause == 0
          query = query + " WHERE environment='#{environment}'"
          whereclause = 1
        else
          query = query + " AND environment='#{environment}'"          
        end
      end

      if fstatus != "" and !fstatus.nil? 
        if whereclause == 0
          query = query + " WHERE failurestatus='#{fstatus}'"
          whereclause = 1
        else
          query = query + " AND failurestatus='#{fstatus}'"          
        end
      end
      
      if detail != "" and !detail.nil? 
        if whereclause == 0
          query = query + " WHERE failuredetail='#{detail}'"
          whereclause = 1
        else
          query = query + " AND failuredetail='#{detail}'"          
        end
      end

      if group != "" and !group.nil? 
        if whereclause == 0
          query = query + " WHERE failuregroup='#{group}'"
          whereclause = 1
        else
          query = query + " AND failuregroup='#{group}'"          
        end
      end
      
      if part != "" and !part.nil? 
        if whereclause == 0
          query = query + " WHERE failurepart='#{part}'"
          whereclause = 1
        else
          query = query + " AND failurepart='#{part}'"          
        end
      end
     
      if mode != "" and !mode.nil? 
        if whereclause == 0
          query = query + " WHERE failuremode='#{mode}'"
          whereclause = 1
        else
          query = query + " AND failuremode='#{mode}'"          
        end
      end
      
           
      if reason != "" and !reason.nil? 
        if whereclause == 0
          query = query + " WHERE failurereason='#{reason}'"
          whereclause = 1
        else
          query = query + " AND failurereason='#{reason}'"          
        end
      end
      
      if manage != "" and !manage.nil? 
        if whereclause == 0
          query = query + " WHERE manage='#{manage}'"
          whereclause = 1
        else
          query = query + " AND manage='#{manage}'"          
        end
      end

      query = query + " GROUP BY station"
      result = find_by_sql(query
      )
      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.station
            graphdata[n][1] = i.numfailure
            n = n + 1
            numtotal = numtotal + i.numfailure
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end
    
def self.graph_numfailure_per_manufacturer(start_year, end_year, area, station, manufacturer, transformer, environment, fstatus, detail, group, part, mode, reason, manage)
      query = "SELECT brands.name as manuname, count(*) as numfailure  \
                              FROM failure_databases LEFT OUTER JOIN transformer \
                              ON failure_databases.egatsn = transformer.egatsn \
                              LEFT outer join stations ON transformer.station = stations.name
                              LEFT OUTER JOIN brands ON transformer.brand_id = brands.id"
                              
      whereclause = 0
      if start_year != "" and !start_year.nil?
        query = query + " WHERE DATEDIFF(year, first_energize, GETDATE()) >= #{start_year}"
        whereclause = 1
      end
      
      if end_year != "" and !end_year.nil? and end_year != "0" 
        if whereclause == 0
          query = query + " WHERE DATEDIFF(year, first_energize, GETDATE()) <= #{end_year}"
          whereclause = 1
        else
          query = query + " AND DATEDIFF(year, first_energize, GETDATE()) <= #{end_year}"          
        end
      end

      if area != "" and !area.nil?  
        if whereclause == 0
          query = query + " WHERE region='#{area}'"
          whereclause = 1
        else
          query = query + " AND region='#{area}'"          
        end
      end

      if station != "" and !station.nil? 
        if whereclause == 0
          query = query + " WHERE station='#{station}'"
          whereclause = 1
        else
          query = query + " AND station='#{station}'"          
        end
      end

      if manufacturer != "" and !manufacturer.nil? 
        if whereclause == 0
          query = query + " WHERE brand_id='#{manufacturer}'"
          whereclause = 1
        else
          query = query + " AND brand_id='#{manufacturer}'"          
        end
      end

      if transformer != "" and !transformer.nil? 
        if whereclause == 0
          query = query + " WHERE egatsn='#{transformer}'"
          whereclause = 1
        else
          query = query + " AND egatsn='#{transformer}'"          
        end
      end

      if environment != "" and !environment.nil? 
        if whereclause == 0
          query = query + " WHERE environment='#{environment}'"
          whereclause = 1
        else
          query = query + " AND environment='#{environment}'"          
        end
      end

      if fstatus != "" and !fstatus.nil? 
        if whereclause == 0
          query = query + " WHERE failurestatus='#{fstatus}'"
          whereclause = 1
        else
          query = query + " AND failurestatus='#{fstatus}'"          
        end
      end
      
      if detail != "" and !detail.nil? 
        if whereclause == 0
          query = query + " WHERE failuredetail='#{detail}'"
          whereclause = 1
        else
          query = query + " AND failuredetail='#{detail}'"          
        end
      end

      if group != "" and !group.nil? 
        if whereclause == 0
          query = query + " WHERE failuregroup='#{group}'"
          whereclause = 1
        else
          query = query + " AND failuregroup='#{group}'"          
        end
      end
      
      if part != "" and !part.nil? 
        if whereclause == 0
          query = query + " WHERE failurepart='#{part}'"
          whereclause = 1
        else
          query = query + " AND failurepart='#{part}'"          
        end
      end
     
      if mode != "" and !mode.nil? 
        if whereclause == 0
          query = query + " WHERE failuremode='#{mode}'"
          whereclause = 1
        else
          query = query + " AND failuremode='#{mode}'"          
        end
      end
      
           
      if reason != "" and !reason.nil? 
        if whereclause == 0
          query = query + " WHERE failurereason='#{reason}'"
          whereclause = 1
        else
          query = query + " AND failurereason='#{reason}'"          
        end
      end
      
      if manage != "" and !manage.nil? 
        if whereclause == 0
          query = query + " WHERE manage='#{manage}'"
          whereclause = 1
        else
          query = query + " AND manage='#{manage}'"          
        end
      end

      query = query + " GROUP BY brands.name"
      result = find_by_sql(query
      )
      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.manuname
            graphdata[n][1] = i.numfailure
            n = n + 1
            numtotal = numtotal + i.numfailure
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end
    
    
    def self.graph_numfailure_per_txname(start_year, end_year, area, station, manufacturer, transformer, environment, fstatus, detail, group, part, mode, reason, manage)
      query = "SELECT transformer_name, count(*) as numfailure  \
                              FROM failure_databases LEFT OUTER JOIN transformer \
                              ON failure_databases.egatsn = transformer.egatsn \
                              LEFT outer join stations ON transformer.station = stations.name"
                              #LEFT OUTER JOIN brands ON transformer.brand_id = brands.id"
                              
      whereclause = 0
      if start_year != "" and !start_year.nil?
        query = query + " WHERE DATEDIFF(year, first_energize, GETDATE()) >= #{start_year}"
        whereclause = 1
      end
      
      if end_year != "" and !end_year.nil? and end_year != "0" 
        if whereclause == 0
          query = query + " WHERE DATEDIFF(year, first_energize, GETDATE()) <= #{end_year}"
          whereclause = 1
        else
          query = query + " AND DATEDIFF(year, first_energize, GETDATE()) <= #{end_year}"          
        end
      end

      if area != "" and !area.nil?  
        if whereclause == 0
          query = query + " WHERE region='#{area}'"
          whereclause = 1
        else
          query = query + " AND region='#{area}'"          
        end
      end

      if station != "" and !station.nil? 
        if whereclause == 0
          query = query + " WHERE station='#{station}'"
          whereclause = 1
        else
          query = query + " AND station='#{station}'"          
        end
      end

      if manufacturer != "" and !manufacturer.nil? 
        if whereclause == 0
          query = query + " WHERE brand_id='#{manufacturer}'"
          whereclause = 1
        else
          query = query + " AND brand_id='#{manufacturer}'"          
        end
      end

      if transformer != "" and !transformer.nil? 
        if whereclause == 0
          query = query + " WHERE egatsn='#{transformer}'"
          whereclause = 1
        else
          query = query + " AND egatsn='#{transformer}'"          
        end
      end

      if environment != "" and !environment.nil? 
        if whereclause == 0
          query = query + " WHERE environment='#{environment}'"
          whereclause = 1
        else
          query = query + " AND environment='#{environment}'"          
        end
      end

      if fstatus != "" and !fstatus.nil? 
        if whereclause == 0
          query = query + " WHERE failurestatus='#{fstatus}'"
          whereclause = 1
        else
          query = query + " AND failurestatus='#{fstatus}'"          
        end
      end
      
      if detail != "" and !detail.nil? 
        if whereclause == 0
          query = query + " WHERE failuredetail='#{detail}'"
          whereclause = 1
        else
          query = query + " AND failuredetail='#{detail}'"          
        end
      end

      if group != "" and !group.nil? 
        if whereclause == 0
          query = query + " WHERE failuregroup='#{group}'"
          whereclause = 1
        else
          query = query + " AND failuregroup='#{group}'"          
        end
      end
      
      if part != "" and !part.nil? 
        if whereclause == 0
          query = query + " WHERE failurepart='#{part}'"
          whereclause = 1
        else
          query = query + " AND failurepart='#{part}'"          
        end
      end
     
      if mode != "" and !mode.nil? 
        if whereclause == 0
          query = query + " WHERE failuremode='#{mode}'"
          whereclause = 1
        else
          query = query + " AND failuremode='#{mode}'"          
        end
      end
      
           
      if reason != "" and !reason.nil? 
        if whereclause == 0
          query = query + " WHERE failurereason='#{reason}'"
          whereclause = 1
        else
          query = query + " AND failurereason='#{reason}'"          
        end
      end
      
      if manage != "" and !manage.nil? 
        if whereclause == 0
          query = query + " WHERE manage='#{manage}'"
          whereclause = 1
        else
          query = query + " AND manage='#{manage}'"          
        end
      end

      query = query + " GROUP BY transformer_name"
      result = find_by_sql(query
      )
      n = 0
      numtotal = 0
      graphdata = Array.new
      graphpercent = Array.new

      for i in result do
            graphdata[n] = Array.new
            graphdata[n][0] = i.transformer_name
            graphdata[n][1] = i.numfailure
            n = n + 1
            numtotal = numtotal + i.numfailure
      end

      for i in 0..graphdata.size-1 do
          graphpercent[i] = Array.new
          graphpercent[i][0] = graphdata[i][0]
          graphpercent[i][1] = (graphdata[i][1]/numtotal.to_f)*100
      end
      return [graphdata, graphpercent]
    end
    
end
