import Vue from 'vue'
import PhoneAPI from './../../PhoneAPI'

const state = {
  show: process.env.NODE_ENV !== 'production',
  myPhoneNumber: '###-####',
  background: JSON.parse(window.localStorage['gc_background'] || null),
  coque: JSON.parse(window.localStorage['gc_coque'] || null),
  zoom: window.localStorage['gc_zoom'] || '100%',
  volume: parseFloat(window.localStorage['gc_volume']) || 1,
  config: {
    reseau: 'Gannon',
    useFormatNumberFrance: false,
    apps: [],
    themeColor: '#2A56C6',
    colors: ['#2A56C6']
  }
}

const getters = {
  show: ({ show }) => show,
  myPhoneNumber: ({ myPhoneNumber }) => myPhoneNumber,
  volume: ({ volume }) => volume,
  background: ({ background, config }) => {
    if (background === null) {
      if (config.background_default !== undefined) {
        return config.background_default
      }
      return {
        label: 'Default',
        value: 'default.jpg'
      }
    }
    return background
  },
  backgroundLabel: (state, getters) => getters.background.label,
  backgroundURL: (state, getters) => {
    if (getters.background.value.startsWith('http') === true) {
      return getters.background.value
    }
    return '/html/static/img/background/' + getters.background.value
  },
  coque: ({ coque, config }) => {
    if (coque === null) {
      if (config && config.coque_default !== undefined) {
        return config.coque_default
      }
      return {
        label: 'base',
        value: 'base.jpg'
      }
    }
    return coque
  },
  coqueLabel: (state, getters) => getters.coque.label,
  zoom: ({ zoom }) => zoom,
  config: ({ config }) => config,
  useFormatNumberFrance: ({ config }) => config.useFormatNumberFrance,
  themeColor: ({ config }) => config.themeColor,
  colors: ({ config }) => config.colors,
  Apps: ({ config }, getters) => config.apps
    .filter(app => app.enabled !== false)
    .map(app => {
      if (app.puceRef !== undefined) {
        app.puce = getters[app.puceRef]
      }
      return app
    }),
  AppsHome: (state, getters) => getters.Apps.filter(app => app.inHomePage === true)

}

const actions = {
  async loadConfig ({ commit }) {
    const config = await PhoneAPI.getConfig()
    commit('SET_CONFIG', config)
  },
  setEnableApp ({ commit, state }, { appName, enable = true }) {
    commit('SET_APP_ENABLE', { appName, enable })
  },
  setVisibility ({ commit }, show) {
    commit('SET_PHONE_VISIBILITY', show)
  },
  setZoon ({ commit }, zoom) {
    window.localStorage['gc_zoom'] = zoom
    commit('SET_ZOOM', zoom)
  },
  setBackground ({ commit }, background) {
    window.localStorage['gc_background'] = JSON.stringify(background)
    commit('SET_BACKGROUND', background)
  },
  setCoque ({ commit }, coque) {
    window.localStorage['gc_coque'] = JSON.stringify(coque)
    commit('SET_COQUE', coque)
  },
  setVolume ({ commit }, volume) {
    window.localStorage['gc_volume'] = volume
    commit('SET_VOLUME', volume)
  },
  closePhone () {
    PhoneAPI.closePhone()
  },
  resetPhone ({ dispatch, getters }) {
    dispatch('setZoon', '100%')
    dispatch('setVolume', 1)
    dispatch('setBackground', getters.config.background_default)
    dispatch('setCoque', getters.config.coque_default)
  }
}

const mutations = {
  SET_CONFIG (state, config) {
    state.config = config
  },
  SET_APP_ENABLE (state, {appName, enable}) {
    const appIndex = state.config.apps.findIndex(app => app.name === appName)
    if (appIndex !== -1) {
      Vue.set(state.config.apps[appIndex], 'enabled', enable)
    }
  },
  SET_PHONE_VISIBILITY (state, show) {
    state.show = show
  },
  SET_MY_PHONE_NUMBER (state, myPhoneNumber) {
    state.myPhoneNumber = myPhoneNumber
  },
  SET_BACKGROUND (state, background) {
    state.background = background
  },
  SET_COQUE (state, coque) {
    state.coque = coque
  },
  SET_ZOOM (state, zoom) {
    state.zoom = zoom
  },
  SET_VOLUME (state, volume) {
    state.volume = volume
  }
}

export default {
  state,
  getters,
  actions,
  mutations
}
