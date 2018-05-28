class DailySpend
  def initialize(gc_target_file, gc_project)
    @project = gc_project
    @data = GoogleCloudClient.new.fetch_costs(gc_target_file)
  end

  def total_value
    collect_costs.inject(:+)
  end

  private

  def collect_costs
    @data.map { |measure| measure["projectId"] == @project ? measure["cost"]["amount"].to_f.round(3) : 0}
  end
end
