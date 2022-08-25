import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })


    this.#addMarkerToMap()
    this.#fitMapToMarker()
  }

  #addMarkerToMap() {
    const marker = this.markerValue
    // const popup = new mapboxgl.Popup().setHTML(marker.info_window)
    new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        // .setPopup(popup)
        .addTo(this.map)
  }

  #fitMapToMarker() {
    const bounds = new mapboxgl.LngLatBounds()
    const marker = this.markerValue
    bounds.extend([ marker.lng, marker.lat ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 1000 })
  }
}
