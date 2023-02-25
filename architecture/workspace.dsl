workspace {
    model {
        dev8Website = softwareSystem "Dev8 Website" {
            !adrs decisions
            !docs docs

            web = container "Frontend Web" "User-facing component that renders views from data" "Astro"
            api = container "Backend API" "Provides data by accepting requests from certain endpoints" "Express"

            web -> api "Sends requests to"
        }
    }

    views {
        systemContext dev8Website "Dev8Website" {
            include *
            autoLayout lr
        }

        container dev8Website "Dev8WebsiteContainers" {
            include *
            autoLayout lr
        } 

        styles {
            element "proposal" {
                opacity 50
            }
        }

        theme default
    }
}
