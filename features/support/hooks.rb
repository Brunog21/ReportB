at_exit do
    ReportBuilder.input_path = 'reports/cucumber.json'
    ReportBuilder.configure do |config|
      config.report_path = 'reports/cucumber_web_report'
      config.report_types = %i[json html]
      options = {
        report_title: 'Automacao QA'
      }
      ReportBuilder.build_report options
    end
  end