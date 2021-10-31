# gem install rest-client

require 'rest_client'

module ResumeHelper

def parse_resume(file_path)
    leverURL = 'https://jobs.lever.co/parseResume'

    response = RestClient::Request.execute(
        method: :post,
        url: leverURL,
        timeout: 600,
        payload: {
            multipart: true,
            resume: File.new(file_path, 'rb')
        },
        cookies: {'lever-referer' => 'https://jobs.lever.co/'},
        headers: {'referer' => 'https://jobs.lever.co/', 'origin' => 'https://jobs.lever.co/'}
    )

    return response
end

end
